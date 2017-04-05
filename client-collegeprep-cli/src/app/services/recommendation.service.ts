import { Injectable  } from '@angular/core';
import { Response } from '@angular/http';
import { Subscription } from 'rxjs/Subscription';
import { ContentService } from "client-angular2-components/dist/services/content";

import { AuthService, AuthHttp } from "client-angular2-components/dist/services/auth";
import { environment } from "../../generated.env";
import 'rxjs/add/operator/toPromise';
import 'rxjs/add/operator/catch';

@Injectable()
export class RecommendationService {

  public static TAG: string = 'RecommendationService';

  public nonFavorites: any;
  private basePath: string;

  constructor(private authService: AuthService, private http: AuthHttp) {
    this.basePath = environment.appServicesPath + '/recommendations';

    this.clearNonFavorites();
    this.authService.tokenChangeBus.subscribe(()=>{
      this.clearNonFavorites();
    });
  }

  private clearNonFavorites() {
    this.nonFavorites = {
      schoolIds: [],
      majorIds: [],
      occupationIds: [],
    };
  }

  public query(queryParams = {}): Promise<any> {
    let qpString = Object.keys(queryParams).map(query => `${query}=${queryParams[query]}`).join("&");
    return this.http.get(`${this.basePath}?${qpString}`).map(resp => this.handleResp(resp)).toPromise();
    //return Promise.reject({status: 500});
  }

  public postQuery(payload: any = {}): Promise<any> {
    payload.nonFavorites = this.nonFavorites;
    return this.http.post(this.basePath, payload).map(resp => this.handleResp(resp)).toPromise();
  }

  private handleResp(resp: Response): any {
    let recs = resp.json().recommendations;
    recs.occupations.forEach(ContentService.computeOccupationProperties);
    recs.majors.forEach(ContentService.computeMajorProperties);
    recs.scholarships.forEach(s => {
      ContentService.computeScholarshipProperties(s);
      s['NUMBER_OF_AWARDS'] = s['MAX_AWARDS'] || s['AVG_AWARDS'] || s['MIN_AWARDS'];
    });
    return recs;
  }

}
