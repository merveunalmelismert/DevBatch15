// trigger ContactTrigger on Contact (before insert) {
// // trigger.isBefore is true when record reached BEFORE trigger of timeline

// if (Trigger.isBefore) {
//     System.debug('before trigger called');
// }
// if (Trigger.isInsert) {
//     System.debug('before insert trigger called');
    
// }
// if (Trigger.isUpdate) {
//     System.debug('before update trigger called');
// }

// if (Trigger.isAfter) {
//     System.debug('after trigger called');
//     if (Trigger.isInsert) {
//         System.debug('after insert trigger called');
        
//     }
// }

// if (Trigger.isUpdate) {
//     System.debug('after update trigger called');
//     if (trigger.isInsert) {
//         System.debug('after insert trigger called');     
//     }
    
// }

// }