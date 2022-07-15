public with sharing class abc {
public static void prefixcall(List<Account> abc) {
    for(Account a : abc){
        if(a.industry == 'Government'){
            a.Name = 'Gov. ' +a.Name;
        }

    }
}
}