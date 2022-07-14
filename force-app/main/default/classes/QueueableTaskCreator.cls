public class QueueableTaskCreator implements Queueable {
    //we are defining a Constructor
    private String recId;
    public QueueableTaskCreator(String recId) {
        this.recId = recId;/*we set the private variable. that we have in my class with the variable that I'm passing to my constructor 
                             so that I can use that variable in my execute method and so the class will compile fine.*/
    }
    //  we have implements the execute Method
    public void execute(QueueableContext context){
        Task tsk = new Task();
            tsk.WhatId = recId;
            tsk.Subject = 'Created From Queueable';
            insert tsk;	
        UpdatePhone.updatePh();
    }
    

}