trigger ContactTrigger2 on Contact (before insert, before update, after insert, after update) {
//2 tane contact update edildiginde bunlarin eski last name ve yeni last name lerini yan yana yazdiralim..

//     if (Trigger.isAfter && Trigger.isUpdate) {
//         ContacttTriggerrrHandlerr.printLastName(trigger.new, trigger.oldMap);
    
// }


// Soru : Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse, bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..







    // // if (Trigger.isAfter&&Trigger.isInsert) {
    // //     for (Contact eachCon : trigger.new) {
    // //         if (eachCon.AccountId != null ) {
    // //             System.debug(eachCon.LastName + ' contact create with Account');    
    // //         }else {
    // //             System.debug('contact created without Account');
    // //         }
    // //     } 
    // // }


    // if (Trigger.isBefore && Trigger.isUpdate) {

    //     ContactTriggerHandler.validateContactUpdate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        
    // }
}