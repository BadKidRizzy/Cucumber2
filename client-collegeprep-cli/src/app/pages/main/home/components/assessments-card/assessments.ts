import { Component } from '@angular/core';
import { Subscription } from "rxjs/Subscription";
import { AuthService } from "client-angular2-components/dist/services/auth";

@Component({
  selector: 'assessments-card',
  templateUrl: './assessments.html',
})
export class AssessmentsCardComponent {

  public hasAuth: boolean;
  private sub: Subscription;

  constructor(private authService: AuthService) {}

  public ngOnInit (){
    this.updateAuth();
    this.sub = this.authService.tokenChangeBus.subscribe(() => this.updateAuth());
  }

  public ngOnDestroy (){
    this.sub.unsubscribe();
  }

  private updateAuth(){
    this.hasAuth = this.authService.isLoggedIn();
  }

}
