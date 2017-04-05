import { NgModule } from "@angular/core";
import { RouterModule } from "@angular/router";
import { PaginationControlModule } from "client-angular2-components/dist/components/pagination-control";
import { SaveCancelDelRowModule } from "client-angular2-components/dist/components/save-cancel-del-row";
import { PeekModule } from "client-angular2-components/dist/components/peek-overlay";

import { SharedModule } from "../../../shared.module";
import { TaskService } from "./service";
import { TasksListPage } from './view/tasks-list';
import { TaskEditPage, TaskEditResolver } from "./edit/task-edit";
import { DatepickerModule } from "../../../modules/datepicker/datepicker.module";
import { LoggedInGuard } from "../../../guards";

@NgModule({
  imports: [
    SharedModule,
    PaginationControlModule,
    SaveCancelDelRowModule,
    DatepickerModule,
    PeekModule,
    RouterModule.forChild([{
        path: '',
        component: TasksListPage,
      }, {
        path: ':id',
        component: TaskEditPage,
        resolve: { results: TaskEditResolver },
        canActivate: [LoggedInGuard],
      }
    ])
  ],
  declarations: [
    TasksListPage, TaskEditPage
  ],
  providers: [
    TaskService, TaskEditResolver
  ]
})

export class TasksModule { }