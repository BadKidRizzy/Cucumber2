import 'rxjs/add/observable/timer';
import 'rxjs/add/operator/toPromise';
import 'rxjs/add/operator/catch';
import { Observable, Subscription } from 'rxjs';

import { Component, Inject, Injectable } from '@angular/core';
import { Response } from '@angular/http';
import { Router, ActivatedRoute, ActivatedRouteSnapshot } from '@angular/router';

import { AuthService } from "client-angular2-components/dist/services/auth";
import { UserService } from "client-angular2-components/dist/services/user";
import { FeaturesEnum, AuthToken } from "client-angular2-components/dist/models";
import { ErrorRerouteMixin } from "client-angular2-components/dist/helpers";

import { TaskService } from "../service";
declare var moment: any;

@Component({
  selector: 'tasks-list-page',
  templateUrl: './tasks-list.html',
  styleUrls: ['./tasks-list.scss'],
})

export class TasksListPage {

  public static TAG: string = 'TasksListPage';

  public ACTIVE: string = 'active';
  public COMPLETED: string = 'completed';

  public today: Date = new Date(); //needed for calendar widget
  public showActive: boolean = true;
  public tasks: Array<any>;
  public markedDates: Array<any> = [];
  public hasCompletedTasks: boolean;
  public totalCount: number = 0;
  public page: number = 1;
  public accessLevel: number;
  public featureDescription: string = "Take full control of your college planning with Tasks. You'll get timely reminders by email or text and can focus memorization on your economics test.";

  private queryDebounce: Subscription;
  private updateListSub: Subscription;
  private paramSub: Subscription;

  constructor(
    private router: Router,
    private route: ActivatedRoute,
    private authService: AuthService,
    private userService: UserService,
    private taskService: TaskService
  ){
    Object.assign(this, ErrorRerouteMixin);
    Object.assign(this, FeaturesEnum);
  }

  public ngOnInit(){
    this.accessLevel = this.userService.features.tasks;

    if ( this.accessLevel == FeaturesEnum.FULL_ACCESS )
      this.fetchHasCompletedTasks();

    this.paramSub = this.route.queryParams.subscribe((params)=>{
      let status = params['status'] || this.ACTIVE;
      let showActive: boolean = status == this.ACTIVE;
      this.page = Number(params['page'] || 1);
      if ( this.accessLevel == FeaturesEnum.FULL_ACCESS ) {
        this.updateTaskList({
          taskCompletionStatus: ( showActive ? TaskService.NOT_COMPLETED : TaskService.COMPLETED ),
          pageNumber: this.page,
        }, showActive);
      } else {
        this.tasks = [];
      }
    });
  }

  public ngOnDestroy() {
    this.paramSub.unsubscribe();
    if ( this.queryDebounce )
      this.queryDebounce.unsubscribe();
    if ( this.updateListSub )
      this.updateListSub.unsubscribe();
  }

  public updateView(token: AuthToken) {
    this.userService.fetchUser(token.osdcUserId).then(() => {
      this.accessLevel = this.userService.features.tasks;
      if ( this.accessLevel = FeaturesEnum.FULL_ACCESS ) {
        this.fetchHasCompletedTasks();
        this.updateTaskList({
          taskCompletionStatus: TaskService.NOT_COMPLETED,
          pageNumber: this.page,
        }, true);
      }
    });
  }

  private fetchHasCompletedTasks() {
    this.taskService.query({taskCompletionStatus: 'Completed'}).toPromise().then(
      results => this.hasCompletedTasks = results.tasks.length > 0,
      (fail: Response) => (<any>this).handleErrorResp(fail)
    );
  }

  /**
   * this is probably the most complex algorithm thus far. good luck.
   * @author Aaron Lee
   * @param task
   */
  public updateTaskStatus(task: any){
    //reset countdown
    task.startCountdown = false;

    //clear previous callbacks
    if ( task.updateSub ) {
      task.updateSub.unsubscribe();
      delete task.updateSub;
    }
    if ( task.countdownSub ){
      task.countdownSub.unsubscribe();
      delete task.countdownSub;
    }

    //make the update right away in case user navigates away
    this.updateListSub = task.updateSub = this.taskService.update(task).subscribe(()=>{

      //show the undo button and trigger countdown animation
      task.showUndo = task.isComplete;
      if ( task.showUndo )
        task.countdownSub = Observable.timer(15).subscribe(() => task.startCountdown = true );
      else
        return;

      //remove the row when countdown finishes
      this.updateListSub = task.updateSub = Observable.timer(3000).subscribe(()=> {

        //only remove if user hasn't undone via checkbox (not via undo button)
        if ( !task.isComplete )
          return;

        this.hasCompletedTasks = true;
        this.markedDates = this.getOverdueObjs().concat(this.getUpcomingObjs());

        //animate removal collapse
        task.isRemoving = true;
        Observable.timer(300).subscribe(() => {

          //only update the list if there's not another task undo pending
          if ( !this.updateListSub || !this.updateListSub.closed )
            return;

          //this line may not be necessary since next line refreshes things
          this.tasks.splice(this.tasks.findIndex(t => t.taskId == task.taskId), 1);

          this.updateTaskList({
            taskCompletionStatus: ( this.showActive ? TaskService.NOT_COMPLETED : TaskService.COMPLETED ),
            pageNumber: this.page
          }, this.showActive);
        });
      });
    }, (fail: Response) => (<any>this).handleErrorResp(fail));
  }

  public undoTaskStatus(task: any){
    task.isComplete = false;
    task.showUndo = false;
    this.updateTaskStatus(task);
  }

  public changePage(page: number){
    let queryParams = {
      status: this.showActive ? this.ACTIVE : this.COMPLETED,
      page,
    };
    this.router.navigate(['/tasks'], {queryParams});

  }

  private updateTaskList(queryParams: any, showActive: boolean){
    if ( this.queryDebounce )
      this.queryDebounce.unsubscribe();

    this.queryDebounce = this.taskService.query(queryParams).subscribe((results:any) => {

      this.tasks = results.tasks;
      this.totalCount = results.totalCount;
      this.showActive = showActive;

      //switch to active view since there's none in complete
      //if ( !this.showActive && !this.tasks.length )
      //  return this.location.back();

      if ( this.showActive ){
        var overdues = this.getOverdueObjs();
        var upcomings = this.getUpcomingObjs();
      }
      this.markedDates = this.showActive ? overdues.concat(upcomings) : [];

    }, (fail: Response) => (<any>this).handleErrorResp(fail));
  }

  private getOverdueObjs(): Array<any> {
    return this.tasks.filter((t: any) => t.taskStatus == TaskService.OVERDUE && t.dueDate).map((t: any)=>{
      return {
        date: moment(t.dueDate.split('T')[0]),
        mode: 'day',
        clazz: 'overdue'
      }
    });
  }

  private getUpcomingObjs(): Array<any> {
    return this.tasks.filter((t: any) => {
      return t.taskStatus != TaskService.COMPLETED && t.taskTatus != TaskService.OVERDUE && t.dueDate;
    }).map((t: any)=>{
      return {
        date: moment(t.dueDate.split('T')[0]),
        mode: 'day',
        clazz: 'upcoming'
      }
    });
  }

}
