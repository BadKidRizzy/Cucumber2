import './polyfills.ts';

import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';
import { enableProdMode } from '@angular/core';
import { environment } from './generated.env';
import { AppModule } from './app/app.module';

if ( !environment.isLocal ) {
  enableProdMode();
  if ( window.location.hostname.endsWith('pathevo.com') )
    document.domain = 'pathevo.com';
}

//(<any>String.prototype).capitalize = function() {
//  return this.length ? this.charAt(0).toUpperCase() + this.slice(1) : this;
//};

platformBrowserDynamic().bootstrapModule(AppModule);
