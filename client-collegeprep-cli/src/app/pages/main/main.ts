import 'rxjs/add/operator/debounceTime';
import { Observable, Subscription } from 'rxjs';
import { Component, Injectable } from '@angular/core';
import { Response } from '@angular/http';
import { Resolve, Router, ActivatedRouteSnapshot, ActivatedRoute, NavigationEnd, NavigationStart } from '@angular/router';
import { AuthService } from "client-angular2-components/dist/services/auth";
import { SidebarService, SidebarEvent } from "client-angular2-components/dist/services/sidebar";
import { UserService } from "client-angular2-components/dist/services/user";
import { User, AuthToken, Features } from "client-angular2-components/dist/models";
import { MenuSidebar } from "../components/menu-sidebar/menu-sidebar";

@Injectable()
export class MainResolver implements Resolve<any>{

  public static TAG: string = 'MainResolver';

  constructor(
    private authService: AuthService,
    private userService: UserService,
    private router: Router
  ){}

  public resolve(route: ActivatedRouteSnapshot) {
    let token = this.authService.getToken();
    if ( token ) {
      console.debug(MainResolver.TAG, 'token found, retrieving user');
      this.authService.startSession(token);
      this.userService.setUserId(token.osdcUserId);
      return this.userService.fetchUser().catch((fail: Response)=>{
        //clears cache;
        console.error(MainResolver.TAG, 'user retrieval failed', fail);
        this.authService.logout().catch((fail) => console.warn(MainResolver.TAG, 'logout failed', fail));
        if ( fail.status == 500 )
          this.router.navigateByUrl('/app-error');
      });
    }
  }

}

@Component({
  selector: 'main-page',
  templateUrl: './main.html',
  styleUrls: ['./main.scss'],
})
export class MainPage {

  public static TAG: string = 'MainPage';

  public user: User;
  public showHeaderNav: boolean;
  public showUpgrade: boolean;
  public darkenMainDiv: boolean;
  public features: Features;

  private subs: Array<Subscription>;
  
  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private authService: AuthService,
    private userService: UserService,
    private sidebarService: SidebarService
  ) {}

  public ngOnInit() {
    this.route.data.forEach((data:any) => this.user = data.user);
    if ( !this.user )
      this.userService.fetchAnonymousFeatures().then((f: Features) => this.features = f);
    else
      this.setFeatureAndUpgrade();

    this.subs = [
      this.initRouteListener(),
      this.initTokenListener(),
      this.initFeatureListener()
    ];
  }

  private initRouteListener(): Subscription {
    return this.router.events.subscribe((nav: any) => {
      if ( nav instanceof NavigationStart ) {
        this.sidebarService.eventBus.next({});
        this.darkenMainDiv = false;
      } else if ( nav instanceof NavigationEnd ) {
        this.showHeaderNav = !nav.url.includes('/onboarding');
      }
    });
  }

  private initTokenListener(): Subscription {
    return this.authService.tokenChangeBus.subscribe((t: AuthToken) => {
      if ( t ) {
        this.userService.fetchUser(t.osdcUserId).then(
          (user:User) => this.user = user,
          (fail) => console.error(MainPage.TAG, 'userListener failed', fail)
        );
      } else {
        this.user = null;
      }
    });
  }

  private initFeatureListener(): Subscription {
    return this.userService.featureChangeBus.subscribe(() => this.setFeatureAndUpgrade());
  }

  private setFeatureAndUpgrade() {
    this.features = this.userService.features;
    this.showUpgrade = !this.userService.getHasSubscription();
  }

  public ngOnDestroy() {
    this.subs.forEach((s: Subscription) => s.unsubscribe());
  }

  public sidebarToggled(state: string) {
    this.darkenMainDiv = state == SidebarService.SHOWN;
  }

  public logout() {
    this.user = null;

    //navigate occurs firsts so that existing component can properly teardown
    //while authService still has credentials to make any autosave calls (ContentNotesComponent)
    //but the trade off is that some of home's components are re-rendered
    this.router.navigateByUrl("/home").then(
      () => this.authService.logout(),
      (fail) => console.warn(MainResolver.TAG, 'logout failed', fail)
    );
  }

}
