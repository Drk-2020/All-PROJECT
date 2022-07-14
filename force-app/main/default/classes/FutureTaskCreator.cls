public class FutureTaskCreator {
    
    @future(callout=true)
    public static void createTask(string recId){
        Task tsk = new Task();
        tsk.Subject = 'Creating from Future';
        tsk.WhatId = recId;
        insert tsk;
    }

}