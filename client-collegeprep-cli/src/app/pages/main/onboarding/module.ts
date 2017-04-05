import { NgModule } from "@angular/core";
import { RouterModule } from "@angular/router";
import { SharedModule } from "../../../shared.module";
import { OnboardingPage } from "./onboarding";

@NgModule({
  imports: [
    SharedModule,
    RouterModule.forChild([{
      path: '',
      component: OnboardingPage,
    }])
  ],
  declarations: [
    OnboardingPage
  ],
})

export class OnboardingModule { }