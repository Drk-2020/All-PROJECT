import { LightningElement,track, api} from 'lwc';
import contactList from '@salesforce/apex/datatablewithrowselection.getcontactList';
const columns = [
    {label : 'Contact name ', fieldName:'Name'},
    {label : 'Phone', fieldName:'Phone'}
];

export default class Datatablewithrowselection extends LightningElement {

    @track showlabel ="Show Contacts"
    @track isVisible = false;
    @track data =[];
    columns = columns;
    @api recordId;// it store current page record Id

    // get related contactlist from apex class
    connectedCallback(){
        // calling apex method
        contactList({lwcRecordId : this.recordId})
        .then( result =>{
            this.data = result;
        })
        .catch(err=>{
            console.log("error occured:"+err);
        })
    }
    // show hide button toggle functionality
    handleClick(event){
        const label = event.target.label;
        if(label === "Show Contacts"){
            this.showlabel ="Hide Contact";
            this.isVisible = true;
        }
        else if(label === "Hide Contact"){
            this.showlabel ="Show Contacts";
            this.isVisible = false;

        }
    }
}