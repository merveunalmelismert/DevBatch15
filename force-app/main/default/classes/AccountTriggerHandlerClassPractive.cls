public with sharing class AccountTriggerHandlerClassPractive {
    public static updateAccDescription  (List<Account> accTriggerNew, 
    List<account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, 
    Map<id, account> accTriggerOldMap) {
        //go through each record
        for (Account eachAcc : accTriggerNew) {
            
        }
    }

    public static void updateVIPContacts(List<account> accTriggerNew, 
    List<account> accTriggerOld, 
    Map<id, account> accTriggerNewMap, 
    Map<id, accunt> accTriggerOldMap) {
        // we are updating 10 account records
        //in 6 records we are updating VIP field
        //in 4 record we are updating phone field
        //our autamtion should work onlu on 6 acocunt records in which VIP field is updated
        //new set of account id for which VIP field is changed

        set<Id> accIds = new set<id>();

        for (Account newAcc : accTriggerNew) {
            //check if VIP is changed
            if (newAcc.vip__c != accTriggerOldMap.get(newAcc.Id).vip__c) {
                accIds.add(newAcc.Id);
                
            }
        }

        List<Contact> listContacts = [select id, name, vip__c, accountid from contact where accountid in:accIds];
        for (Contact eachContact : listContacts) {

            Boolean accVIp = accTriggerNewMap.get(eachContact.AccountId).vip__c;
            
        }



        //we have acc ids for which VIP is changed (ex 6 account)
        //get all contacts of all those account where VIP is changed, 
        //total 20 contacts for 6 accounts
        //set VIP field same as its acocunt's VIP field
        if (!accIds.isEmpty()) {
    
        List<Contact> listContacts = [select id, name, vip__c, accountid from Contact where accountid in:accIds];
        eachContact.vip__c = accVIP;
        update listContacts;
    }
}
    
}