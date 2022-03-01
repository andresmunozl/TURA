import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { RouterModule } from '@angular/router';

import { AppComponent } from './app.component';
import { NavMenuComponent } from './nav-menu/nav-menu.component';
import { HomeComponent } from './home/home.component';
import { CounterComponent } from './counter/counter.component';
import { FetchDataComponent } from './fetch-data/fetch-data.component';
import { HeaderComponent } from './components/header/header.component';
import { ConnectorsComponent } from './connectors/connectors.component';
import { CorrelationComponent } from './correlation/correlation.component';
import { UserManagementComponent } from './user-management/user-management.component';
import { API_BASE_URL } from '../services/generated.service';
import { environment } from '../environments/environment';

@NgModule({
  declarations: [
    AppComponent,
    NavMenuComponent,
    HomeComponent,
    CounterComponent,
    FetchDataComponent,
    HeaderComponent,
    ConnectorsComponent,
    UserManagementComponent,
    CorrelationComponent  
  ],
  imports: [
    BrowserModule.withServerTransition({ appId: 'ng-cli-universal' }),
    HttpClientModule,
    FormsModule,
    RouterModule.forRoot([
        { path: '', component: HomeComponent, pathMatch: 'full' },
        { path: 'home', component: HomeComponent },
        { path: 'counter', component: CounterComponent },
        { path: 'fetch-data', component: FetchDataComponent },
        { path: 'connectors', component: ConnectorsComponent },
        { path: 'correlation', component: CorrelationComponent },
        { path: 'identities', component: UserManagementComponent },
//        { path: '**', component: HomeComponent},
      
    ])
  ],
    providers: [
        { provide: 'BASE_URL', useFactory: getBaseUrl, deps: [] },
        { provide: API_BASE_URL, useFactory: getApiBaseUrl, deps: [] },
    ],
  bootstrap: [AppComponent]
})
export class AppModule { }

export function getBaseUrl() {
    //return document.getElementsByTagName('base')[0].href;
    return environment.api_base_url;
}
export function getApiBaseUrl() {
    return environment.api_base_url;
}
