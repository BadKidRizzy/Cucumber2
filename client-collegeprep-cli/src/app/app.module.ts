import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoot } from './app-root';
import { AppRoutes } from "./app.routes";
import { CoreServicesModule } from "./core.module";

//Root App Module
@NgModule({
  imports: [
    BrowserModule,
    CoreServicesModule,
    AppRoutes
  ],
  declarations: [AppRoot],
  bootstrap:    [AppRoot]
})
export class AppModule {}