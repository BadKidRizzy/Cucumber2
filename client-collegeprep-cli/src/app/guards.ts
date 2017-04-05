import { Injectable } from '@angular/core';
import { CanActivate, Router } from '@angular/router';
import { Location } from '@angular/common';
import { AuthService } from "client-angular2-components/dist/services/auth";

//TODO consider moving this into components Auth Pages module
@Injectable()
export class AuthPagesGuard implements CanActivate {

  constructor(private authService: AuthService, private router: Router) {}

  public canActivate(): boolean {
    let isLoggedIn = this.authService.isLoggedIn();
    if ( isLoggedIn )
      this.router.navigateByUrl('/home');
    return !isLoggedIn;
  }

}

//TODO consider moving this into Task module as that is the only place its used
@Injectable()
export class LoggedInGuard implements CanActivate {

  public static TAG: 'LoggedInGuard';

  constructor(private authService: AuthService, private router: Router, private location: Location) {}

  public canActivate(): boolean {
    let isLoggedIn = this.authService.isLoggedIn();
    if ( !isLoggedIn ) {
      console.debug(LoggedInGuard.TAG, 'activation denied');
      this.router.navigate(['/auth/login'], {queryParams: {reroute_to: this.location.path()}});
    }
    return isLoggedIn;
  }

}