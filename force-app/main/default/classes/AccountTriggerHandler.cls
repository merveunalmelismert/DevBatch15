public class AccountTriggerHandler {

  public static void updateAccDescription(List<account> accTriggerNew, List<Account> accTriggerOld, 
                                      Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
      //go through each record
      for(account eachAcc: accTriggerNew){
          //check if insert, then active is set to YES
          boolean updateDesc = false;
          if(Trigger.isInsert && eachAcc.Active__c == 'Yes'){
              updateDesc = true;
          }
          //check if update
          if(Trigger.isUpdate){
              //check if active field is changed. And new active field is 'Yes'
                  //check if old acc active != new acc active
              if(eachAcc.Active__c != accTriggerOldMap.get(eachAcc.id).Active__c && eachAcc.Active__c == 'Yes'){
                 updateDesc = true;
              }
          }
          
          if(updateDesc){
              eachAcc.Description = 'Account is now active. Enjoy buddy!';
          }
      }

  }

  public static void updateVIPContacts() {
    
 
}

// Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayınız.

public static void updateDescription() {
    set<id> accIds = new Set<Id>();
    for (Account acc : trigger.new) {
      if (acc.Description != trigger.oldMap.get(acc.id).Description) {
        accIds.add(acc.id);
        
      }
}
//future metoda bu idleri parametre olarak gonder
if (!accIds.isEmpty()) {
    futureDescriptionUpdate(accIds);
}

futureDescriptionUpdate(accIds);
}



@future 
public static void futureDescriptionUpdate(set<id> accIds) {
    //bu accountlara bagli tum contactlari getirip description fieldlerini update ederiz..
    List<Contact> conList = [select id, Description, Account.Description from Contact WHERE AccountId =: accIds];
    for (Contact con : conList) {
        con.Description = con.Account.Description;
    }
    update conList;

        //bu accountlara bagli tum opportunityleri getirip description fieldlerini update ederiz
    List<Opportunity> oppList = [select id, Description, Account.Description from Opportunity WHERE AccountId =:accIds];
    for (Opportunity eachopp : oppList) {
        eachopp.Description = eachopp.Account.Description;
    }

    update oppList;
    
}

@future
public static void futureCreateContacts(set<id> accIds) {
    List<Contact> conList = new List<Contact>();
    for (id accId : accIds) {
        contact con = new contact();
        con.LastName = 'Contact';
        con.AccountId = accId;
        conList.add(con);
    }
    insert conList;
}


}