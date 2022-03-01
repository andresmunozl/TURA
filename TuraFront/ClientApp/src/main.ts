import { enableProdMode } from '@angular/core';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';

import { AppModule } from './app/app.module';
import { environment } from './environments/environment';
import { API_BASE_URL } from './services/generated.service';

export function getBaseUrl() {
  return document.getElementsByTagName('base')[0].href;
}

if (environment.production) {
    enableProdMode();
}

const providers = [
    { provide: 'BASE_URL', useFactory: getBaseUrl, deps: [] },
    { provide: API_BASE_URL, useFactory: getApiBaseUrl, deps: [] },
];

platformBrowserDynamic(providers).bootstrapModule(AppModule)
  .catch(err => console.log(err));

export function getApiBaseUrl() {
    return environment.api_base_url;
}
