import 'rxjs/add/operator/map';
import 'rxjs/add/operator/toPromise';

import { Injectable  } from '@angular/core';
import { Response } from '@angular/http';
import { AuthHttp } from "client-angular2-components/dist/services/auth";
import { environment } from "../../../../../../generated.env";

@Injectable()
export class HighlightService {

  public static TAG: string = 'HighlightsService';
  private basePath: string;

  constructor(private http: AuthHttp) {
    this.basePath = environment.appServicesPath + '/highlights';
  }

  public queryHighlights(): Promise<any> {
    return this.http.get(this.basePath).map((resp:Response) => resp.json().highlights).toPromise();
  }

}