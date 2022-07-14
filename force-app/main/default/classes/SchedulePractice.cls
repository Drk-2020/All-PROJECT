public class SchedulePractice Implements Schedulable {
  
    public void execute(Schedulablecontext sc){
        
        Database.executeBatch(new AccountUpdateBatchJob());
        
    }
}

/*
SchedulePractice testobj = new SchedulePractice();
String cronexpression = '0 54 1 12 7 ? *';
System.schedule('Testing', cronexpression, testobj);*/