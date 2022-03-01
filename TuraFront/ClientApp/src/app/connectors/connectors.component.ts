import { Component } from '@angular/core';
import { ConnectorService } from '../../services/connector.service';
import { IConnectorModel } from '../../services/generated.service';

@Component({
    selector: 'app-connectors',
    templateUrl: './connectors.component.html',
    styleUrls: ['./connectors.component.scss']
})
/** Connectors component*/
export class ConnectorsComponent {
/** Connectors ctor */
    connectors: IConnectorModel[];
    flag: number;
    constructor(private connectorService: ConnectorService) {
        this.getCons();
    }
    async getCons(): Promise<IConnectorModel[]> {
        this.flag = 0;
        this.connectors = await this.connectorService.getConnectors();
        
        if (this.connectors != null)
            this.flag = 1;
        else
            this.flag = 2;
        console.log(this.connectors[0].name)
        return this.connectors;
    }
    pageChanged(event) {
        this.connectorService.getConnectors();
        this.connectors = this.connectorService.model;
        if (this.connectors != null)
            this.flag = 3;
        else
            this.flag = 4;
    }
}
