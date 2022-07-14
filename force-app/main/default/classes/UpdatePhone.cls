public class UpdatePhone {
    
    public static void updatePh(){
        list<account> ac =[select Name from Account Where Name ='Gary Singh'];
    
    for(account a:ac){
        a.Phone = '123456';
    }
        update ac;
       System.debug()
   }
}