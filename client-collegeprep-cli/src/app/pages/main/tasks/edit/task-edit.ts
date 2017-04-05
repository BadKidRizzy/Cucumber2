import 'rxjs/add/observable/forkJoin';
import 'rxjs/add/operator/toPromise';
import 'rxjs/add/operator/mergeMap';
import { Component, Inject, Injectable } from '@angular/core';
import { ActivatedRoute, ActivatedRouteSnapshot, Resolve, Router } from '@angular/router';
import { Location } from '@angular/common';
import { Observable } from 'rxjs/Observable';
import { Subscription } from 'rxjs/Subscription';
import { ErrorRerouteMixin } from "client-angular2-components/dist/helpers";
import { PhoneValidationMixin } from "client-angular2-components/dist/helpers/phone-validation-mixin";
import { FeedbackButton } from "client-angular2-components/dist/components/feedback-button";
import { UserService } from "client-angular2-components/dist/services/user";
import { User } from "client-angular2-components/dist/models";
import { TaskService } from "../service";

declare var moment: any;

@Injectable()
export class TaskEditResolver implements Resolve<any>{

  constructor(
    protected router: Router, //needed error route mixin
    private taskService: TaskService,
    private userService: UserService
  ){}

  resolve(route: ActivatedRouteSnapshot): any {
    let id = route.params['id'];
    if ( id == 'new' ){
      return this.userService.fetchUser().then(
        //user needed for find phone number
        user => { return { task: TaskService.makeTask(), user } },
        fail => ErrorRerouteMixin.handleErrorResp.call(this, fail)
      );
    } else {
      return Promise.all([
        this.taskService.fetch(id),
        this.userService.fetchUser()
      ]).then(
        (results: Array<any>) => { return { task: results[0], user: results[1] }},
        (fail) => ErrorRerouteMixin.handleErrorResp.call(this, fail)
      );
    }
  }
}

@Component({
  selector: 'task-edit-page',
  templateUrl: './task-edit.html',
  styleUrls: ['./task-edit.scss'],
})
export class TaskEditPage {

  public static TAG: string = "TaskEditPage";

  public title: string = "";
  public descript: string = "";
  public task: any;
  public dueDate: Date;
  public reminderMoment;
  public isComplete: boolean;
  public daysPrior: number = 1;
  public remindByEmail: boolean;
  public remindByText: boolean;
  public remindOnDueDate: boolean;
  public remindOnPriorDate: boolean;
  //public disableMoreDays: boolean;
  public debounceStatusUpdate: Subscription;
  public isNew: boolean;
  public invalidDueDate: boolean;
  public showPhonePrompt: boolean;
  public disableSavePhone: boolean = true;
  public disableSave: boolean;
  public isSaving: boolean;
  public isDeleting: boolean;
  public showMobileCal: boolean;
  public saveBtnState: string; //FeedbackButton states

  public hasPhone: boolean;
  public phone: string = null;
  public user: User;

  private saveTaskSub: Subscription;
  private savePhoneSub: Subscription;
  private deleteTaskSub: Subscription;

  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private location: Location,
    private userService: UserService,
    private taskService: TaskService
  ){
    Object.assign(this, PhoneValidationMixin);
  }

  public ngOnInit(){
    this.initTask();
    this.initReminders();
  }

  public ngOnDestroy(){
    for ( let s of [this.saveTaskSub, this.savePhoneSub, this.deleteTaskSub] )
      if ( s )
        s.unsubscribe();
  }

  private initTask(){
    this.route.data.forEach((data: any) => {
      this.task = data.results.task;

      //finds user phone number
      this.user = data.results.user;
      this.hasPhone = this.user.phone != null && this.user.phone.length > 0;
    });

    this.isNew =  !this.task.taskId;
    if ( this.isNew )
      return;

    this.title = this.task.title;
    this.descript = this.task.description;

    if ( this.task.dueDate ) {
      this.dueDate = new Date(this.task.dueDate);
      this.handleDueDate();
      this.disableSave = true;
    }
    this.isComplete = this.task.isComplete;
  }

  private initReminders(){
    if ( this.dueDate && this.task.reminders && this.task.reminders.length ){

      //determine whether there's a reminder on due date
      let reminders = this.task.reminders;
      let dueMoment = moment(this.task.dueDate);

      let dueDateReminder = reminders.find(r => moment(r.dueDate).isSame(dueMoment, 'day'));
      this.remindOnDueDate = dueDateReminder != null;
      if ( dueDateReminder ){
        this.remindByEmail = dueDateReminder.remindByEmail;
        this.remindByText = dueDateReminder.remindByText;
      }

      let priorDateReminder = reminders.find(r => moment(r.dueDate).isBefore(dueMoment, 'day'));
      if ( priorDateReminder ) {
        this.remindOnPriorDate = true;
        this.daysPrior = dueMoment.diff(moment(priorDateReminder.dueDate), 'day');
        this.remindByEmail = priorDateReminder.remindByEmail;
        this.remindByText = priorDateReminder.remindByText;
        this.handleDueDate();
      }
    }
  }

  public toggleCompleteTask(){
    this.isComplete = !this.isComplete;
    if ( this.debounceStatusUpdate )
      this.debounceStatusUpdate.unsubscribe();

    let task: any = Object.assign({}, this.task);
    task.isComplete = this.isComplete;
    if ( this.isComplete )
      task.taskStatus = TaskService.COMPLETED;
    else if ( task.dueDate )
      task.taskStatus = task.dueDate < new Date() ? TaskService.UNDERWAY : TaskService.OVERDUE;
    else
      task.taskStatus = TaskService.NOT_STARTED;

    this.debounceStatusUpdate = this.taskService.update(task).subscribe(() => this.task.isComplete = task.isComplete);
  }

  public updateDaysPrior(change: number){
    if ( this.daysPrior <= 1 && change < 0 )
      return;

    //let reminderMoment = moment(this.dueDate.toISOString().split('T')[0]);
    //reminderMoment.add(-this.daysPrior+change, 'day');
    //this.disableMoreDays = reminderMoment.diff(moment(), 'day') == 1;
    //if ( this.disableMoreDays && change > 0 )
    //  return;

    this.remindOnPriorDate = true;
    this.daysPrior += change;
    this.handleDueDate();
  }

  public handleDueDate(){
    let dueMoment = moment(this.dueDate.toISOString().split('T')[0]);
    this.invalidDueDate = dueMoment.diff(moment(), 'day') < 0;
    dueMoment.add(-this.daysPrior, 'day');
    this.reminderMoment = dueMoment;
  }

  //public clearDueDate(){
  //  this.invalidDueDate = false;
  //  this.dueDate = null;
  //  this.reminderMoment = null;
  //}

  public handleRemindByEmail(){
    if ( this.remindByEmail )
      this.autoSelectReminder();
    else
      this.autoDeselectReminder();

  }

  public handleRemindByText(){
    this.showPhonePrompt = this.remindByText && !this.hasPhone;
    if ( this.remindByText )
      this.autoSelectReminder();
    else
      this.autoDeselectReminder();
  }

  private autoSelectReminder(){
    if ( !this.remindOnDueDate && !this.remindOnPriorDate )
      this.remindOnDueDate= true;
  }

  private autoDeselectReminder(){
    if ( !this.remindByText && !this.remindByEmail) {
      this.remindOnDueDate= false;
      this.remindOnPriorDate= false;
    }
  }

  //ignore the first 2 times
  private i = 2;
  public checkDisableSave(){
    this.i--;
    if ( this.i <= 0 )
      this.disableSave = ( (this.remindByEmail || this.remindByText) && ( !this.remindOnDueDate && !this.remindOnPriorDate ) );
  }

  public checkDisableSaveNumber(){
    this.disableSavePhone = !(<any>this).isPhoneValid(this.phone) || !this.phone;
  }

  public savePhone(){
    this.user.phone = this.phone;
    this.userService.updateUser(this.user);
    this.hasPhone = true;
    this.showPhonePrompt = false;
    this.remindByText = true;
  }

  public save(){
    let observable = this.isNew ? this.createNewTask() : this.updateTask();
    let queryParams = { status: this.task.isComplete ? 'completed' : 'active' };

    this.isSaving = true;
    this.saveBtnState = FeedbackButton.WAITING;
    this.saveTaskSub = observable.subscribe(
      () => this.router.navigate(['/tasks'], {queryParams}),
      () => {
        this.isSaving = false;
        this.saveBtnState = FeedbackButton.FAILED;
      }
    );
  }

  private createNewTask(): Observable<any>{
    //first create the task
    let task = Object.assign(this.task, {
      title: this.title,
      description: this.descript,
      dueDate: this.dueDate,
    });

    return this.taskService.create(task).mergeMap(
      (task) => {
        this.task = task;
        this.isComplete = task.isComplete;
        this.isNew = false;
        let apiCalls = this.createReminders();
        return apiCalls.length ? Observable.forkJoin(apiCalls) : Observable.of([]);
      }
    );
  }

  private updateTask(): Observable<any>{
    //create new reminder, delete old ones
    let apiCalls: Array<any> = this.createReminders();
    if ( this.task.reminders )
      apiCalls = apiCalls.concat(this.task.reminders.map(r => this.taskService.deleteReminder(this.task, r)));

    //update the task after the reminders are set, since task reads reminder data
    return apiCalls.length ? Observable.forkJoin(apiCalls).mergeMap(() => this._updateTask()) : this._updateTask();
  }

  private _updateTask(): Observable<any>{
    Object.assign(this.task, {
      title: this.title,
      description: this.descript,
      dueDate: this.dueDate
    });
    return this.taskService.update(this.task).mergeMap(task => {
      this.task = task;
      return Observable.of(task);
    });
  };

  private createReminders(): Array<any>{
    let apiCalls = [];
    if ( !this.dueDate )
      return [];

    if ( this.remindOnDueDate ) {
      let reminder = TaskService.makeReminder(this.task, this.dueDate, this.remindByEmail, this.remindByText);
      apiCalls.push(this.taskService.createReminder(reminder));
    }
    if ( this.remindOnPriorDate) {
      let reminder = TaskService.makeReminder(this.task, this.reminderMoment.toISOString().split('.')[0], this.remindByEmail, this.remindByText);
      apiCalls.push(this.taskService.createReminder(reminder));
    }
    return apiCalls;
  }

  public delete(){
    this.isDeleting = true;
    this.deleteTaskSub = this.taskService.delete(this.task).subscribe(
      () => this.location.back(),
      () => this.router.navigateByUrl('app-error')
    );
  }

}
