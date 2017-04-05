import { NgModule } from '@angular/core';
import { RelateModule, RELATE_PAGE_CONFIG, RelatePageConfig } from 'client-angular2-components/dist/pages/relate';

let relatePageConfig: RelatePageConfig = { detailRoute: "/detail" };

@NgModule({
  imports: [ RelateModule ],
  providers: [{ provide: RELATE_PAGE_CONFIG, useValue: relatePageConfig }]
})
export class PrepRelateModule { }