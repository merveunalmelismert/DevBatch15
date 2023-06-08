// //1st step is sObject to account
// //2 save
// //deploy-must be successful.
// //create new account record

trigger AccountTrigger on Account (before insert, after insert, before update, after update) {

  if (Trigger.isBefore && Trigger.isInsert) {
    System.debug('trigger.new (data which is inserted/updated'  + trigger.new); 
    
  }
  List<account> newAccounts = trigger.new; 
  if (Trigger.isAfter && Trigger.isInsert) {
    System.debug('trigger.new after insert '  + trigger.new);
    System.debug('before insert number of record ' +  trigger.new.size());
    //line 12 and 15 are giving the same thing. bc one of them is list and one of them is list of size.bc line 12 prints the records and 15 prints the size.
    for (Account eachAcc : newAccounts) {
      System.debug('before acc id '  + eachAcc.Id);
      System.debug('before acc name  '  +eachAcc.Name );
      
    }

  }
  if (trigger.isAfter && trigger.isInsert) {
    System.debug('trigger.new after insert '  +trigger.new);
    System.debug('after insert number of recor ' + trigger.new);
    
    for (Account eachAcc : newAccounts) {
      System.debug('after acc id '  + eachAcc.Id);
      System.debug('after acc name ' +eachAcc.Name);
      
    }
  }

// isbefore will be true when trigger is running in before save context
//     if(trigger.isBefore){
//         system.debug('before insert account trigger');

//     }
//     // isAfter will be true when trigger is runing in after save context
//     if(trigger.isAfter){
// system.debug('after insert account trigger');
//   }
// =======TR REVIEW DEKI EXAMPLE, ACCCOUNT DAN CONTACT URETME===
 //1 Account create edildiğinde. ona bağlı 7 tane Contact otomatik olarak create edilsin. first name'i account name ile aynı olsun. last name i contact 1 2 3.. diye isimlendirilsin..
 if (trigger.isInsert && trigger.isAfter) {
  List<contact> conList = new List<Contact>();
    for (account acc : trigger.new) {
       for (Integer i = 1; i <=7; i++) {
          contact c = new contact();
          c.FirstName = acc.name;
          c.LastName = 'Contact ' + i;
          c.AccountId = acc.id;
          conList.add(c);
       }
    }
    if (!conList.isEmpty()) {
      insert conList;  
    }  
 }  
// 2. BIR ACCOUNT UPDATE EDILDIGINDE NAME DEGISMISSE DESCRIPTION FIELDINE NAME DEGISTIRILDI MESAJI YAZIDR

if (trigger.isUpdate&& trigger.isBefore) {
  //yeni name ve eski namei yazdiralim.
  for (Account acc : trigger.new){
    string newName = acc.Name;
    string oldName = trigger.oldMap.get(acc.Id).Name;
     
   
    if (newName != oldName) {
      acc.Description = ' bu recordun ismi degisti... ';
    }
  }


  
}

// Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayı
  if (Trigger.isAfter&&Trigger.isUpdate) {
    AccountTriggerHandler.updateDescription(trigger.new, trigger.oldMap);
    // set<id> accIds = new Set<Id>();
    // for (Account acc : trigger.new) {
    //   if (acc.Description != trigger.oldMap.get(acc.id).Description) {
    //     accIds.add(acc.id);
        
    //   }
      
    }
  }





//======MAY 16 PRACTICE======

// trigger AccountTrigger on Account (before insert, after insert, before update, after update) {
//     if (trigger.isBefore) {
//         AccountTriggerHandlerClassPractive.updateVIPContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        
//     }
//     if (Trigger.isAfter&& Trigger.isUpdate) {
//         AccountTriggerHandlerClassPractive.updateVIPContacts(Trigger.rNew, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        
//     }


// }