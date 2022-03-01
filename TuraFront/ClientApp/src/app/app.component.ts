import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
    templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
    title = 'Tura Web Management';
    isCollapsed = false;

    ngOnInit() {
    }

    toggle() {
        this.isCollapsed = !this.isCollapsed;
    }
}
