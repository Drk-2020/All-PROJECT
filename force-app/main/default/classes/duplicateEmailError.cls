public with sharing class duplicateEmailError {
    public static void invoketrigger(List<lead> lelist) {

    //Step:1 create a set
    set<string> checkSameMailisPresent = new set<string>();
   //Step:2 Create for loop
   for(lead l:lelist){
    checkSameMailisPresent.add(l.Email);
   }
   //step:3 fetch all contact
    }
}
