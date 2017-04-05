import 'rxjs/add/observable/timer';
import 'rxjs/add/operator/toPromise';
import { Subscription } from 'rxjs/Subscription';
import { Observable } from 'rxjs/Observable';
import { Component, Injectable, trigger, state, style, transition, animate } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { CAREER_CLUSTERS } from "client-angular2-components/dist/helpers";
import { AuthService } from "client-angular2-components/dist/services/auth";
import { UserService } from "client-angular2-components/dist/services/user";
import { User } from "client-angular2-components/dist/models";
import { RecommendationService } from "../../../services/recommendation.service";

@Component({
  selector: 'onboarding-page',
  templateUrl: './onboarding.html',
  styleUrls: ['./onboarding.scss'],
})

export class OnboardingPage {

  public static TAG: string= 'OnboardingPage';

  public careerClusters: Array<any> = CAREER_CLUSTERS.filter(c => c.Name != 'Hospitality and Tourism');
  public selectedCluster: string;
  public selectedIcon: string;

  private recs;
  private recsPromise: Promise<any>;
  private queryParamSub: Subscription;

  constructor(
    private router: Router,
    private route: ActivatedRoute,
    private recService: RecommendationService,
    private authService: AuthService,
    private userService: UserService
  ){}

  public ngOnInit() {
    this.queryParamSub = this.route.queryParams.subscribe(params => {
      window.scrollTo(0, 0);
      this.selectedCluster = params['career_cluster'];

      if ( this.selectedCluster ) {
        this.recsPromise = Promise.all([
          this.recService.query({careerCluster: this.selectedCluster}),
          Observable.timer(500).toPromise(), //adds a floor in wait time; should be set to greater than the animation time in css
        ]).then(results => this.recs = results[0]);

        this.selectedIcon = this.careerClusters.find(c => c.Name == this.selectedCluster).icon;
      } else {
        this.recs = null;
      }
    });
  }

  public ngOnDestroy() {
    this.queryParamSub.unsubscribe();
  }

  public selectCluster(cluster: any) : void {
    if ( cluster )
      this.router.navigate(['/onboarding'], {queryParams: { career_cluster: cluster.Name }});
    else
      this.router.navigate(['/onboarding']);
  }

  public goToRelatePage() {
    if ( this.authService.isLoggedIn() ){
      this.userService.fetchUser().then((user: User) => {
        user.career_cluster = this.selectedCluster;
        this.userService.updateUser(user);
      });
    }
    this.recsPromise.then(() => {
      let queryParams :any = {
        majors: this.recs.majors.map(c => c.id),
        schools: this.recs.schools.map(c => c.id),
        occupations: this.recs.occupations.map(c => c.id),
        cluster: this.selectedCluster
      };
      localStorage.setItem( 'pathevo::relate', JSON.stringify( queryParams ) );
      this.router.navigateByUrl( '/relate' );
    });
  }


}
