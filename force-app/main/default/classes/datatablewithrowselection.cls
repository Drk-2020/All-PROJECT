public with sharing class datatablewithrowselection {

    @AuraEnabled(cacheable=true)
    public static list<contact> getcontactList(Id lwcRecordId) {
        list<contact> conlist = [select Id,Name,Phone,AccountId from contact];
        return conlist;

    }
}