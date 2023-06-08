trigger AccountTrigger2 on Account (before insert,after insert, before update,  after update) {

// if (trigger.isAfter&& trigger.isUpdate) {
//     System.debug('after update, trigger.old '  +trigger.old);
   
//    List<Account> oldAccounts = trigger.old;
//     for (Account oldACC : trigger.old) {

//         System.debug('old acc id is '  +oldAcc.Id +'old acc name is  '  +oldAcc.Name);

        
//     }
//     System.debug('-----');
//     System.debug('after update, trigger.new'  +trigger.new);
//     for (Account newAcc : trigger.new) {
//         System.debug('new acc id is '  +newAcc.Id + 'new acc name is '  + newAcc.Name);
        
//     }
    

    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('before insert, trigger.old : ' + trigger.old); 
    //     system.debug('before insert, trigger.new : ' + trigger.new); 
    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     system.debug('after insert trigger.old : ' + trigger.old); 
    //     system.debug('after insert, trigger.new : ' + trigger.new); 
    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     system.debug('before update trigger.old : ' + trigger.old); 
    //     system.debug('before update, trigger.new : ' + trigger.new); 
    // }
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     system.debug('after update trigger.old : ' + trigger.old);
    //     system.debug('after update, trigger.new : ' + trigger.new);  
    // }

//}












    //if we are creating 1 record, we will get 1 record in trigger.new
        //the number of records we are processing in ONE execution, we will get that many number of records in trigger.new
    
    // //trigger.new  is LIST
    // List<account> newAccounts = trigger.new;
    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('trigger.new before insert : ' + trigger.new);
    //     system.debug('before insert number of records: ' + trigger.new.size());

    //     for (account eachAcc : trigger.new) {
    //         system.debug('before acc id ' + eachAcc.Id);
    //         system.debug('before acc name ' + eachAcc.Name);
    //     }

    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     system.debug('trigger.new after insert : ' + trigger.new);
    //     system.debug('after insert number of records: ' + newAccounts.size());

    //     for (account eachAcc : newAccounts) {
    //         system.debug('after acc id ' + eachAcc.Id);
    //         system.debug('after acc name ' + eachAcc.Name);
    //     }

    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     //in before update record is not saved
    //     system.debug('trigger.new before update : ' + trigger.new);
    //     system.debug('before update number of records: ' + trigger.new.size());


    // }
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //      //in after update record is saved
    //     system.debug('trigger.new after update : ' + trigger.new);
    //     system.debug('after update number of records: ' + newAccounts.size());
    // }

    //========05.15.2023===== BEFORE TRIGGER======

    System.debug('-------');

        if (trigger.isBefore) {
            //go through each record
            for (Account eachAcc : Trigger.new) {
                //check if insert, then acticate is set to YES
                if (Trigger.isInsert && eachAcc.Active__c == 'Yes') {
                    eachAcc.Description ='Account is now active. Enjoy';
                    
                }
        }
   
        
    }

//SAVE
//1. SYSTEM VALIDATION
//2.BEFORE TRIGGER ( RECORD IS NOT SAVED YET, ID IS NOT GENERATED)
//CHANGE GIELD VALUES HERE(IT IS ALLOWED BC RECORD IS NOT YET SAVED)
//3. CUSTOM VALIDATION
//4. SAVE(ID GENERATED. NOT AVALIBLE FOR USE, NOT COMMITTED)
//5 AFTER TRIGGER (RECORD IS SAVED. ID IS GENERATED. TRIGGER. NEW IS READ ONLY NOW)


// // check update
// if (Trigger.isUpdate) {
//     //check if active field changed and new active field is 'yes'
//     //check if active field is not equal to new acc active
    
//   if (eachAcc.active != trigger.oldMap.get(eachAcc.Id).Active__c && eachAcc.Active__c == 'yes' ) {
//     eachAcc.Description = 'Account is now active. Enjoy';
    
//   }  

//     //another way====>>
//     Account oldAcc = trigger.oldMap.get(eachAcc.Id);
//     if (eachAcc.Active__c != oldAcc.Active__c && eachAcc.Active__c == 'Yes') {
        
//     }
// }


}