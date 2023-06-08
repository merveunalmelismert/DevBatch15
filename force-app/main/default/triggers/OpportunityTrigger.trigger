trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update) {
//     // if (Trigger.isInsert) {
//     //     if (trigger.isBefore) {
//     //         System.debug('insert before ic ic 2 if..');
            
//     //     }
        
//     // }
//     // if (Trigger.isInsert && Trigger.isAfter) {
//     //     System.debug('insert after tek if');
//     //     //2.3. linedaki ile 9'uncu line ayni. 
        
//     // }
//     if (Trigger.isInsert && Trigger.isBefore) {
//         System.debug('===before insert trigger tetiklendi====');
//         System.debug('trigger new === ' + trigger.new);
//         for (Opportunity op : trigger.new) {
//             System.debug('opp name  = ' + op.Name);
//             System.debug('id='  + op.Id);
//             System.debug('created date '  +op.CreatedDate);
            
//         }
//     }
//     if (trigger.isInsert && trigger.isAfter) {
//         System.debug('==== after insert trigger tetiklendi');
//         for (Opportunity op : trigger.new) {
//             System.debug('opp name  = ' + op.Name);
//             System.debug('id='  + op.Id);
//             System.debug('created date '  +op.CreatedDate);
//     }
//     if (trigger.isUpdate && trigger.isBefore) {
//         System.debug('before update trigger tetkinlendi');
//     }
//     if (trigger.isUpdate && trigger.isAfter) {
//         System.debug('after update trigger tetiklendi');
//     }

// }
 }