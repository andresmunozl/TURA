/// <reference path="../../../../node_modules/@types/jasmine/index.d.ts" />
import { TestBed, async, ComponentFixture, ComponentFixtureAutoDetect } from '@angular/core/testing';
import { BrowserModule, By } from "@angular/platform-browser";
import { ConnectorsComponent } from './connectors.component';

let component: ConnectorsComponent;
let fixture: ComponentFixture<ConnectorsComponent>;

describe('Connectors component', () => {
    beforeEach(async(() => {
        TestBed.configureTestingModule({
            declarations: [ ConnectorsComponent ],
            imports: [ BrowserModule ],
            providers: [
                { provide: ComponentFixtureAutoDetect, useValue: true }
            ]
        });
        fixture = TestBed.createComponent(ConnectorsComponent);
        component = fixture.componentInstance;
    }));

    it('should do something', async(() => {
        expect(true).toEqual(true);
    }));
});