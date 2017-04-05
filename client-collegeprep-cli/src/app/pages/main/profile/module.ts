import { NgModule} from '@angular/core';
import { ProfileModule, PROFILE_PAGE_CONFIG, ProfilePageConfig } from 'client-angular2-components/dist/pages/profile';

let profilePageConfig: ProfilePageConfig = {
  showPayment: true,
  termsRoute: '/documents'
};

@NgModule({ 
  imports: [ ProfileModule ],
  providers: [{ provide: PROFILE_PAGE_CONFIG, useValue: profilePageConfig }]
})
export class PrepProfileModule {}