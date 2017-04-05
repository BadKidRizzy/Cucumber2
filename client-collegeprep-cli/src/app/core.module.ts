import { environment } from "../generated.env";
import { NgModule, ModuleWithProviders } from '@angular/core';
import { HttpModule } from '@angular/http';
import { AuthHttp, AuthService, AUTH_SERVICE_CONFIG, AuthServiceConfig } from "client-angular2-components/dist/services/auth";
import { AuthContentService, AUTH_CONTENT_SERVICE_CONFIG, AuthContentServiceConfig } from "client-angular2-components/dist/services/auth_content";
import { ContentService, CONTENT_SERVICE_CONFIG, ContentServiceConfig } from "client-angular2-components/dist/services/content";
import { UserService, USER_SERVICE_CONFIG, UserServiceConfig } from "client-angular2-components/dist/services/user";
import { FavoriteService, FAV_SERVICE_CONFIG, FavServiceConfig } from "client-angular2-components/dist/services/favorite";
import { NoteService, NOTE_SERVICE_CONFIG, NoteServiceConfig } from "client-angular2-components/dist/services/note";
import { PaymentService, PAYMENT_SERVICE_CONFIG, PaymentServiceConfig } from "client-angular2-components/dist/services/payment";
import { AssessmentService, ASSESSMENT_SERVICE_CONFIG, AssessmentServiceConfig } from "client-angular2-components/dist/services/assessment";
import { SidebarService } from "client-angular2-components/dist/services/sidebar";
import { PdfService, PDF_SERVICE_CONFIG, PdfServiceConfig } from "client-angular2-components/dist/services/pdf";

import { HighlightService } from "./pages/main/home/components/highlights-card/service";
import { RecommendationService } from "./services/recommendation.service";

let favServiceConfig: FavServiceConfig = { api: environment.sharingBasePath };
let noteServiceConfig: NoteServiceConfig = { api: environment.messageBasePath };
let userServiceConfig: UserServiceConfig = { api: environment.userProfileBasePath };
let assessmentServiceConfig: AssessmentServiceConfig = { api: environment.assessBasePath };
let authContentServiceConfig: AuthContentServiceConfig = { api: environment.contentBasePath };
let pdfServiceConfig: PdfServiceConfig = { api: environment.pdfServiceBasePath };

let authServiceConfig: AuthServiceConfig = {
  api: environment.authBasePath,
  clientId: 'osdccollegeprep',
  //facebookAppId: environment.facebookAppId,
  facebookAppId: '586911694767374',
  googleAppId: environment.googleAppId,
  stripeKey: environment.stripeKey,
};

let contentServiceConfig: ContentServiceConfig = {
  api: environment.contentBasePath,
  imageHost: environment.imageBasePath,
  googleMapApiKey: environment.googleMapApiKey,
};

let paymentServiceConfig: PaymentServiceConfig = {
  api: environment.appServicesPath,
  appName: 'CollegePrep',
  basicProductName: 'CollegePrep, Registered - Basic',
  proProductName: 'CollegePrep - Pro'
};

//Core Service singletons shared across all other modules
@NgModule({
  imports: [
    HttpModule
  ],
  exports: [
    HttpModule,
  ],
  providers: [
    SidebarService,

    AuthService, AuthHttp, { provide: AUTH_SERVICE_CONFIG, useValue: authServiceConfig },
    AuthContentService, { provide: AUTH_CONTENT_SERVICE_CONFIG, useValue: authContentServiceConfig },
    ContentService, { provide: CONTENT_SERVICE_CONFIG, useValue: contentServiceConfig },
    FavoriteService, { provide: FAV_SERVICE_CONFIG, useValue: favServiceConfig },
    NoteService, { provide: NOTE_SERVICE_CONFIG, useValue: noteServiceConfig },
    UserService, { provide: USER_SERVICE_CONFIG, useValue: userServiceConfig },
    PaymentService, { provide: PAYMENT_SERVICE_CONFIG, useValue: paymentServiceConfig },
    AssessmentService, { provide: ASSESSMENT_SERVICE_CONFIG, useValue: assessmentServiceConfig },
    PdfService, { provide: PDF_SERVICE_CONFIG, useValue: pdfServiceConfig },

    UserService,
    RecommendationService,
    HighlightService,
  ]
})
export class CoreServicesModule {}
