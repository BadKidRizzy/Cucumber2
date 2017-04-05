import { Injectable } from '@angular/core';
import { Resolve, Router, ActivatedRouteSnapshot } from '@angular/router';
import { Location } from '@angular/common';
import { FeaturesEnum } from "client-angular2-components/dist/models";
import { UserService } from "client-angular2-components/dist/services/user";

@Injectable()
export class FeatureResolver implements Resolve<any> {

  public static TAG: string = 'FeatureGuard';

  constructor(
    private userService: UserService,
    private router: Router,
    private location: Location
  ) {}

  public resolve(route: ActivatedRouteSnapshot): Promise<boolean> {
    let routeName = route.url.toString();
    switch ( routeName ){
      case 'assess':
        var featureName = 'assessment_ip1'; break;
      case 'advisor':
        featureName = 'advisor_q_a'; break;
      default:
        featureName = routeName
    }
    //fetchs user if userId is known, otherwise anonymous user feature list
    let promise: Promise<any> = this.userService.userId ? this.userService.fetchUser() : this.userService.fetchAnonymousFeatures();

    return promise.then(() => {
      let accessLevel = this.userService.features[featureName];
      let hasAccess = accessLevel > FeaturesEnum.HIDE;
      if ( !hasAccess ){
        console.debug(FeatureResolver.TAG, 'access denied:', featureName, this.userService.features);
        this.router.navigate(['/auth/login'], {queryParams: {reroute_to: this.location.path()}});
      }
      return hasAccess;
    });
  }


}