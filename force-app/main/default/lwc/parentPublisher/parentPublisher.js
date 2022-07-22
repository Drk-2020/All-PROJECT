import { LightningElement, wire } from 'lwc';
import {currentPageReference} from 'lightning/navigation'
import { fireEvent } from 'c/pubsub';

export default class ParentPublisher extends LightningElement {

@wire(currentPageReference) pageRef;
    handlechange(event){
        fireEvent(this.pageRef,"ParentPublisher",event.target.value);

    }
}