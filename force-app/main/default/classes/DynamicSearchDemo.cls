/**
 * @description       : Dynmic Search Control for Contact Search
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-22-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class DynamicSearchDemo {
    public DynamicSearchDemo() {
        
    }
    @AuraEnabled(cacheable=true)
    public static List<Contact> DisplayConrecords(string searchkey){
        string searchword ='%'+searchkey+'%';
        System.debug('SearchWord'+searchword);
        List<Contact> conlist = new List<Contact>();
        for(Contact con:[SELECT LastName FROM Contact where LastName Like:searchword]){
            conlist.add(con);

        }
        return conlist;
    }
}
