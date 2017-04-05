import { CommonModule } from "@angular/common";
import { RouterModule } from "@angular/router";
import { NgModule } from "@angular/core";
import { FormsModule } from "@angular/forms";

//Shared components and directives that other modules should probably import
@NgModule({
  imports:      [
    RouterModule,
    CommonModule,
  ],
  declarations: [],
  exports: [
    RouterModule,
    CommonModule,
    FormsModule,
  ]
})
export class SharedModule {}
