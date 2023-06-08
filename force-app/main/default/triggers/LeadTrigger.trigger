// trigger LeadTrigger on Lead (before insert, before update) {
//     List<Lead> leadList = trigger.new;
//     if (trigger.isBefore ) {
//         if (trigger.isInsert) {
//             for (Lead eachlead : trigger.new) {
//                 System.debug('before insert the trigger '  + eachlead);
                
//             }
//         }
        

//         if (Trigger.isUpdate) {
//             for (Lead eachlead : leadList) {
//                 System.debug('before update id is ' + eachlead.Id);
//                 System.debug('before update last name is ' + eachlead.LastName);
//                 System.debug('before update description is ' +eachlead.Description);

                
//             }
            
//         }
       
//     }
    

// }