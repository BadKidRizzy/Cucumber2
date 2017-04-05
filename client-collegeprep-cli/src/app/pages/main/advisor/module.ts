import { NgModule } from "@angular/core";
import { RouterModule } from "@angular/router";
import { PeekModule } from "client-angular2-components/dist/components/peek-overlay";

import { SharedModule } from "../../../shared.module";
import { AdvisorPage } from "./controller";
import { AdvisorService } from "./service";

@NgModule({
  imports: [
    SharedModule,
    PeekModule,
    RouterModule.forChild([{ path: '', component: AdvisorPage }])
  ],
  providers: [
    AdvisorService
  ],
  declarations: [
    AdvisorPage
  ],
})

export class AdvisorModule { }