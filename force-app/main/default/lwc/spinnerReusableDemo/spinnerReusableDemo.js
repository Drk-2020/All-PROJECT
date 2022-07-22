import { LightningElement } from 'lwc';

export default class SpinnerReusableDemo extends LightningElement {
    Showone = false;
    Showtwo = false;
    Showthree = false;


    handleClick(event){
        const{name} = event.target
        this[name] = true
        let timer = window.setTimeout(()=>{
            this[name] = false
            window.clearTimeout(timer)
        },5000)
    }
}