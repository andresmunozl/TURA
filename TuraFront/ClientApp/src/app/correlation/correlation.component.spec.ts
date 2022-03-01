/// <reference path="../../../../node_modules/@types/jasmine/index.d.ts" />
import { TestBed, async, ComponentFixture, ComponentFixtureAutoDetect } from '@angular/core/testing';
import { BrowserModule, By } from "@angular/platform-browser";
import { CorrelationComponent } from './correlation.component';

let component: CorrelationComponent;
let fixture: ComponentFixture<CorrelationComponent>;

describe('Correlation component', () => {
    beforeEach(async(() => {
        TestBed.configureTestingModule({
            declarations: [ CorrelationComponent ],
            imports: [ BrowserModule ],
            providers: [
                { provide: ComponentFixtureAutoDetect, useValue: true }
            ]
        });
        fixture = TestBed.createComponent(CorrelationComponent);
        component = fixture.componentInstance;
    }));

    it('should do something', async(() => {
        expect(true).toEqual(true);
    }));
});