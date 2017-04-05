import { NgModule } from "@angular/core";
import { Routes, RouterModule, PreloadAllModules } from "@angular/router";
import { DropdownModule } from "ng2-bootstrap/dropdown";

import { LoginPopoverModule } from "client-angular2-components/dist/components/login-popover";
import { PathevoFooterModule } from "client-angular2-components/dist/components/pathevo-footer";
import { RelateChartModule } from "client-angular2-components/dist/components/relate-chart";
import { AUTH_PAGE_CONFIG, AuthPageConfig } from "client-angular2-components/dist/pages/auth";
import { DocumentsModule } from "client-angular2-components/dist/pages/documents";
import { FavoritesSidebarModule, FAV_SIDEBAR_CONFIG, FavSidebarConfig } from "client-angular2-components/dist/components/favorites-sidebar";

import { MainPage, MainResolver } from "./pages/main/main";
import { PathevoHeader } from "./pages/components/pathevo-header/pathevo-header";
import { MenuSidebar } from "./pages/components/menu-sidebar/menu-sidebar";

import { HomePage } from "./pages/main/home/home";
import { FavoritesCardComponent } from "./pages/main/home/components/favorites-card/favorites-card";
import { CardStackComponent } from  "./pages/main/home/components/card-stack/card-stack";
import { RecSchoolComponent } from "./pages/main/home/components/rec-school/rec-school";
import { RecMajorComponent } from "./pages/main/home/components/rec-major/rec-major";
import { RecOccupationComponent } from "./pages/main/home/components/rec-occupation/rec-occupation";
import { RecSchoolarshipComponent } from "./pages/main/home/components/rec-scholarship/rec-scholarship";
import { HighlightsCardComponent } from "./pages/main/home/components/highlights-card/controller";
import { AssessmentsCardComponent } from "./pages/main/home/components/assessments-card/assessments";

import { AppErrorPage } from "./pages/main/errors/app-error/app-error";
import { NotFoundPage } from "./pages/main/errors/not-found/not-found";
import { SharedModule } from "./shared.module";
import { LoggedInGuard, AuthPagesGuard } from "./guards";
import { FeatureResolver } from "./pages/main/feature.resolver";

const routes: Routes = [{
    path: 'auth',
    loadChildren: 'app/pages/auth/module#PrepAuthModule',
    canActivate: [AuthPagesGuard],
  }, {
    path: '',
    component: MainPage,
    resolve: { user: MainResolver },
    children: [{
      path: 'onboarding',
      loadChildren: 'app/pages/main/onboarding/module#OnboardingModule',
      resolve: { dummy: FeatureResolver }
    }, {
      path: '',
      pathMatch: 'full',
      redirectTo: 'home'
    }, {
      path: 'home',
      component: HomePage,
    }, {
      path: 'profile',
      loadChildren: 'app/pages/main/profile/module#PrepProfileModule',
    }, {
      path: 'detail',
      loadChildren: 'app/pages/main/detail/module#PrepContentDetailModule',
      resolve: { dummy: FeatureResolver }
    }, {
      path: 'search',
      loadChildren: 'app/pages/main/search/module#PrepSearchModule',
      resolve: { dummy: FeatureResolver }
    }, {
      path: 'documents',
      loadChildren: 'app/pages/main/documents/module#PrepDocumentsModule',
    }, {
      path: 'data-sources',
      loadChildren: 'app/pages/main/data-sources/module#PrepDataSourcesModule',
    }, {
      path: 'assess',
      loadChildren: 'app/pages/main/assess/module#PrepAssessmentModule',
      resolve: { dummy: FeatureResolver }
    },{
      path: 'tasks',
      loadChildren: 'app/pages/main/tasks/module#TasksModule',
      resolve: { dummy: FeatureResolver }
    }, {
      path: 'advisor',
      loadChildren: 'app/pages/main/advisor/module#AdvisorModule',
      resolve: { dummy: FeatureResolver }
    }, {
      path: 'relate',
      loadChildren: 'app/pages/main/relate/module#PrepRelateModule',
      resolve: { dummy: FeatureResolver }
    }, {
      path: 'not-found',
      component: NotFoundPage,
    }, {
      path: 'app-error',
      component: AppErrorPage,
    }]
  },{
    path: '**',
    redirectTo: 'not-found'
  },
];

//auth page config is set here instead of in ./pages/auth/module because login popover needs it as well
const authPageConfig: AuthPageConfig = {
  loginSuccessRoute: '/home',
  loginErrorRoute: '/app-error',
  signUpSuccessRoute: '/onboarding',
  termsRoute: '/documents',
  privacyRoute: '/documents',
  loginRoute: '/auth/login',
  signUpRoute: '/auth/sign-up',
  upgradeRoute: '/profile/payment'
};

const favSidebarConfig: FavSidebarConfig = {
  detailRoute: '/detail',
  searchRoute: '/search',
  relateRoute: '/relate',
};

@NgModule({
  imports: [
    SharedModule,
    LoginPopoverModule,
    RelateChartModule,
    PathevoFooterModule,
    FavoritesSidebarModule,

    DropdownModule.forRoot(),
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules }),
  ],
  exports: [RouterModule],
  providers: [
    AuthPagesGuard,
    MainResolver,
    FeatureResolver,
    LoggedInGuard,

    { provide: AUTH_PAGE_CONFIG, useValue: authPageConfig },
    { provide: FAV_SIDEBAR_CONFIG, useValue: favSidebarConfig },
  ],
  declarations: [
    MainPage,
      PathevoHeader,
      MenuSidebar,

    HomePage,
      FavoritesCardComponent,
      CardStackComponent, RecSchoolComponent, RecMajorComponent, RecOccupationComponent, RecSchoolarshipComponent,
      HighlightsCardComponent,
      AssessmentsCardComponent,

    AppErrorPage,
    NotFoundPage,
  ]
})
export class AppRoutes { }
