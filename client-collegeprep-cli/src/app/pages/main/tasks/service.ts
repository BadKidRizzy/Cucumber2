import 'rxjs/add/operator/toPromise';
import { Injectable  } from '@angular/core';
import { Http, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import { AuthHttp } from "client-angular2-components/dist/services/auth";
import { ServiceUtils } from "../../../services/utils";
import { environment } from "../../../../generated.env";

@Injectable()
export class TaskService {

  public static TAG: string = 'TaskService';
  public static COMPLETED = 'Completed';
  public static NOT_COMPLETED = 'OverDue|NotStarted|Underway';
  public static OVERDUE = 'OverDue';
  public static UNDERWAY = 'Underway';
  public static NOT_STARTED = 'NotStarted';
  private basePath: string;

  constructor(private http: AuthHttp) {
    this.basePath = environment.messageBasePath;
  }

  public static makeTask(){
    return {
      itemTypeId: '8e2e1a6c-96f8-49aa-85b8-ee78488494af',
      taskId: null,
      title: null,
      description: "",
      addedDate: null,
      startDate: null,
      dueDate: null,
      updatedDate: null,
      isComplete: false,
      updatedByUserId: null,
      hasReminders: 0,
      reminders: null,
      taskStatus: null
    }
  }

  public static makeReminder(task, dueDate, remindByEmail: boolean, remindByText: boolean) {
    return {
      "dueDate": dueDate,
      "reminderId": null,
      "title": task.title,
      "ownerItemId": task.taskId,
      "ownerItemTypeId": "8e2e1a6c-96f8-49aa-85b8-ee78488494af",
      "ownerItemType": "User Tasks",
      remindByEmail, remindByText
    };
  }

  public query(queryParams: any = {}): Observable<any>{
    queryParams = Object.assign({
      pageNumber: 1,
      pageSize: 10,
      //sortByField: 'dueDate'
    }, queryParams);

    if ( queryParams.taskCompletionStatus ){
      var statusesQuery = queryParams.taskCompletionStatus.split('|').map(s => `taskCompletionStatus=${s}`).join('&');
      delete queryParams.taskCompletionStatus;
    }
    let qpString = Object.keys(queryParams).map(key => `${key}=${queryParams[key]}`).join('&');
    if ( statusesQuery )
      qpString += '&' + statusesQuery;

    let url = `${this.basePath}/userTasks?${qpString}`;

    return this.http.get(url).map((resp: Response) => {
      return {
        totalCount: resp.headers.get('RowCount'),
        tasks: resp.json()
      };
    });
    //return Observable.throw({status: 500});
  }

  public fetch(id: string): Promise<any>{
    let url = `${this.basePath}/userTasks/${id}`;
    return ServiceUtils.mapToPromise(this.http.get(url));
    //return Promise.reject({status: 404});
  }

  public update(task): Observable<any>{
    let url = `${this.basePath}/userTasks/${task.taskId}`;
    console.debug(TaskService.TAG, 'update');
    return this.http.put(url, task).map((resp: Response) => resp.json());
  }

  public create(task): Observable<any>{
    return this.http.post(`${this.basePath}/userTasks`, task).map((resp: Response) => resp.json());
  }

  public delete(task): Observable<any>{
    return this.http.delete(`${this.basePath}/userTasks/${task.taskId}`);
  }

  public createReminder(reminder): Observable<any>{
    console.debug(TaskService.TAG, 'createReminder');
    return this.http.post(`${this.basePath}/userReminders`, reminder).map((resp: Response) => resp.json());
  }

  public deleteReminder(task, reminder): Promise<any>{
    console.debug(TaskService.TAG, 'deleteReminder');
    return this.http.delete(`${this.basePath}/userTasks/${task.taskId}/reminders/${reminder.reminderId}`).toPromise();
  }


}
