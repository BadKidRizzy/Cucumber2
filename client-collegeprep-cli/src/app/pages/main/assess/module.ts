import { NgModule} from '@angular/core';
import { AssessmentModule } from 'client-angular2-components/dist/pages/assess';
import { AssessmentResultsConfig, ASSESSMENT_RESULTS_CONFIG } from "client-angular2-components/dist/components/assessment-results/config";

let assessmentResultsConfig: AssessmentResultsConfig = {
  assetsBaseUrl: '',
  absoluteUrl: '',
};

@NgModule({
  imports: [ AssessmentModule ],
  providers: [
    { provide: ASSESSMENT_RESULTS_CONFIG, useValue: assessmentResultsConfig },
  ],
})
export class PrepAssessmentModule { }
