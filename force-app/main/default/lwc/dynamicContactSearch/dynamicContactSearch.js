import { LightningElement, track, wire } from 'lwc';
import DisplayConrecords from '@salesforce/apex/DynamicSearchDemo.DisplayConrecords';

export default class DynamicContactSearch extends LightningElement {
    @track conLastName
    @track records;
    @track error;   
    @wire(DisplayConrecords,{searchkey:'$conLastName'})
    wireContact({error,data}){

        if(data){
            this.records=data;
            this.error=undefined;  
        }
        else{
            this.error=data;
            this.records=undefined;
        }
        
    }


    handleChange(event){
         this.conLastName = event.target.value;
         console.log('conLastName'+this.conLastName);
    }
}