public class MixedDMLFuture {
      public static void useFutureMethod() {

        // First DML operation

        Account a = new Account(Name='Vera Future');

        insert a;

        // This next operation (insert a user with a role) 

        // can't be mixed with the previous insert unless 

        // it is within a future method. 

        // Call future method to insert a user with a role.

        Util.insertUserWithRole('vera@amp.com', 'AmpImp', 'Dkakad@vera.com','Kakad');        

    }

}