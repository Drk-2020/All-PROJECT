import { LightningElement } from 'lwc';

export default class map extends LightningElement {
    mapMarkers;
    zoomLevel;
    listView;
    connectedCallback(){
    this.mapMarkers = [
        {
            location: {
                City: "Pune",
                Country: "India" ,
                PostalCode: "411047",
                State: "MH",
                Street: "Lohegaon Airport",
            },

            title: "Dnyaneshwar Kakad",
            description:"I am Here",
            icon:"standard:account"
        },
    ];
    //google map Api supports zoom level from 1 to 22 in desktop browsers and 1 to 20 for mobile
    this.zoomLevel = 15;
    this.listView = 'visible';
}
}