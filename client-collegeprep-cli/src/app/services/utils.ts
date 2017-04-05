import { Response } from '@angular/http';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/toPromise';

export class ServiceUtils {

  public static mapToPromise(obs: Observable<any>): Promise<any> {
    return obs.map((resp: Response) => resp.json()).toPromise();
  }

}