import { Injectable  } from '@angular/core';
import { Http, Headers, Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import { AuthHttp, AuthService } from "client-angular2-components/dist/services/auth";

import { ServiceUtils } from "../../../services/utils";
import { environment } from "../../../../generated.env";

@Injectable()
export class AdvisorService {

  public static TAG: string = 'AdvisorService';
  private baseUrl     = environment.appServicesPath + '/advisor';
  private paymentHost = environment.paymentBasePath + '/api';

  constructor(private http: AuthHttp) {}

  public postPaymentTransaction(payload): Promise<any> {
    return ServiceUtils.mapToPromise(this.http.post(`${this.paymentHost}/userPaymentTransactions`, payload));
  }

  public fetchTicket(id: string): Promise<any> {
    return ServiceUtils.mapToPromise(this.http.get(`${this.baseUrl}/ticket/${id}`));
  }

  public postReply(id: string, payload): Promise<any> {
    return ServiceUtils.mapToPromise(this.http.post(`${this.baseUrl}/reply/${id}`, payload));
  }

  public submitQuestion(payload): Promise<any> {
    return ServiceUtils.mapToPromise(this.http.post(`${this.baseUrl}/submit`, payload));
  }

  public queryGroups(): Promise<any> {
    return ServiceUtils.mapToPromise(this.http.get(`${this.baseUrl}/groups`));
  }

  public fetchUserTickets(username: string){
    return ServiceUtils.mapToPromise(this.http.get(`${this.baseUrl}/tickets/${username}`));
  }

  public uploadFile(id: string, email: string, formData: FormData): Promise<any>{
    return ServiceUtils.mapToPromise(this.http.post(`${this.baseUrl}/upload/${id}/${email}`, formData));
  }

}
