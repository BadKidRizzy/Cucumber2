import { Component, HostListener } from '@angular/core';
import { Router, NavigationStart } from '@angular/router';
import { Location } from '@angular/common';
import { Subscription } from 'rxjs/Subscription';
import { AuthService } from "client-angular2-components/dist/services/auth";

@Component({
  selector: 'app-root',
  template: '<router-outlet></router-outlet>',
  styleUrls: ['./app-root.scss'],
})
export class AppRoot {

  public static TAG:string = 'AppRoot';
  private routeSub:Subscription;

  constructor(private router:Router,
              private location:Location,
              private authService:AuthService) {
  }

  public ngOnInit() {
    this.initTransitionScroll();
  }

  public ngOnDestroy() {
    this.routeSub.unsubscribe();
  }

  private initTransitionScroll() {
    this.routeSub = this.router.events.subscribe((nav:any) => {
      if (nav instanceof NavigationStart) {
        let currentUrl = this.location.path().split('?')[0];
        let targetUrl = nav.url.split('?')[0];
        if (currentUrl != targetUrl || targetUrl.includes('documents'))
          window.scrollTo(0, 0);
      }
    });
  }

  @HostListener('window:beforeunload', ['$event'])
  public beforeUnloadHandler(event) {
    if (!this.authService.getRememberMe())
      window.localStorage.removeItem(AuthService.TOKEN_KEY);
  }

}
