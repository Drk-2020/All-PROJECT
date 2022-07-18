public with sharing class duplicateEmailError {
public static void invoketrigger(List<lead> lelist) {

//Step:1 create a set
set<string> checkSameMailisPresent = new set<string>();

//Step:2 Create for loop
for(lead l:lelist){
checkSameMailisPresent.add(l.Email);
}

//step:3 fetch all contact having a new email Ids
list<contact> checkEmail = [select id,Email from contact where Email =: checkSameMailisPresent];

//step 4: Create a map for store all contact same Email(Map used for comparison).
Map<string,contact> maplead = new Map<string,contact>();

//step: 5 Put all contact into the Map for further comparison
for(contact c : checkEmail){
maplead.put(c.email,c);
}

//step: 6 we can again iterate all those lead record, those are newely inserted
for(lead le :lelist){
if(maplead.get(le.email) != Null){
le.addError('You Can Not Create Lead With thid Email Id is Already Present');
}

}
}
}
