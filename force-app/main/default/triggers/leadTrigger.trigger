trigger leadTrigger on Lead (before insert) {

if(trigger.isbefore && trigger.isinsert){
    duplicateEmailError.invoketrigger(trigger.new);
    }

}