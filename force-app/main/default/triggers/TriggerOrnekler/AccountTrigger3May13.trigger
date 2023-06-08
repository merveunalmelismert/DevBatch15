// trigger AccountTrigger3May13 on Account (before insert, after insert, before update, after update) {

//     if (Trigger.isBefore && Trigger.isInsert) {
//     System.debug('before insert, trigger.old ' + trigger.old);
//     System.debug('after insert, trigger.new ' +trigger.new);
    
// }
//     if (Trigger.isAfter && Trigger.isInsert) {
//         System.debug('after insert, trigger.old ' + trigger.old);
//         System.debug('after insert, triger.new' + trigger.new);
        
//     }

//     if (Trigger.isBefore&&Trigger.isUpdate) {
//         System.debug('before update trigger.old ' +trigger.old);
//         System.debug('before update trigger.new ' +trigger.new);
        
//     }

//     if (trigger.isAfter&& Trigger.isUpdate) {
//         System.debug('after uodate trigger.old '  +trigger.old);
//         System.debug('after update trigger. new ' + trigger.new);
        
//     }
// }