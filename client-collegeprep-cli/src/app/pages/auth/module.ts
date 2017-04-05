import { NgModule } from "@angular/core";
import { AuthModule } from "client-angular2-components/dist/pages/auth";

//simply doing an export { AuthModule } from "client-angular2-components/dist/pages/auth" doesn't work in AoT
//Auth Page config is set higher because login popover needs it as well
@NgModule({ imports: [ AuthModule ] })
export class PrepAuthModule { }