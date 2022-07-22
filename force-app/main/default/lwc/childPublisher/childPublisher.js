import { LightningElement, wire } from 'lwc';
import {currentPageReference} from 'lightning/navigation'
import { registerListener } from 'c/pubsub';
export default class ChildPublisher extends LightningElement {


    viewMessage='';
    @wire(currentPageReference)pageRef;

    connectedCallback(){
        registerListener("ParentPublisher",showDetails,this);
    }

    showDetails(data){
        this.viewMessage=data;
    }
    
}