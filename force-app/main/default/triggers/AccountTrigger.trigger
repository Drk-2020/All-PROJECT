trigger AccountTrigger on Account (after insert,before insert,before update,after update) {
    
    for(Account acc : Trigger.new){
        //Future Implementation 
       FutureTaskCreator.createTask(acc.Id);
        
        //Queueable Implementation 
        // we are creating a new Instance for this apex class
        QueueableTaskCreator qJob = new QueueableTaskCreator(acc.id);
        Id JobId = system.enqueueJob(qJob);
        system.debug('Queueable Job id' +JobId );
        
    }
   if(trigger.isbefore && trigger.isinsert){
       abc.prefixcall(trigger.new); 
    }
 }