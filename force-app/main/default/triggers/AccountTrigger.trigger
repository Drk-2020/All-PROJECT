trigger AccountTrigger on Account (after insert) {
    
    for(Account acc : Trigger.new){
        //Future Implementation 
       FutureTaskCreator.createTask(acc.Id);
        
        //Queueable Implementation 
        // we are creating a new Instance for this apex class
        QueueableTaskCreator qJob = new QueueableTaskCreator(acc.id);
        Id JobId = system.enqueueJob(qJob);
        system.debug('Queueable Job id' +JobId );
    }
    
 }