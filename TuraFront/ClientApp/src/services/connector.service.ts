import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ConnectorClient, ConnectorModel, IConnectorModel } from './generated.service';
import { ActivatedRoute } from '@angular/router';
import { map, finalize } from 'rxjs/operators';
import { Observable } from 'rxjs';

@Injectable({
    providedIn: 'root'
})
export class ConnectorService {

    model: IConnectorModel[];

    constructor(private httpClient: HttpClient, private activatedRoute: ActivatedRoute,) {
        
    }
    async getConnectors(): Promise<IConnectorModel[]>{
        
        
        let client: ConnectorClient = new ConnectorClient(this.httpClient);

        let obs: Observable<IConnectorModel[]> = await client.get();


        await obs.subscribe(result => {
            console.log(result[0].id);
            this.model = result;
        },
            null,
            () => { this.completed(); }
        );
        return this.model;
    }
    completed() {
        
    }
    getConnector(id: string) {
        let client: ConnectorClient = new ConnectorClient(this.httpClient);

        let obs: Observable<IConnectorModel> = client.get2(id);

        obs.subscribe(result => {
            console.log(result.id);
            console.log(result.name);
        }
        );
    }
}
