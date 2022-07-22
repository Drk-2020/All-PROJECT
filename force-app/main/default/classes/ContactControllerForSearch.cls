/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-22-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class ContactControllerForSearch {
    
 @AuraEnabled(cacheable=true)
        public static List<Contact> DisplayConrecords(string searchkey){
            string searchword ='%'+searchkey+'%';
            System.debug('SearchWord'+searchword);
            List<Contact> conlist = new List<Contact>();
            for(Contact con:[select LastName from Contact where LastName Like:searchword WITH SECURITY_ENFORCED]){

            }
            return conlist;
        }
}