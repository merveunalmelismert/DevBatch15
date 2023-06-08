trigger assgntrigger on Contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    if (Trigger.isInsert && Trigger.isBefore) {
        System.debug('before trigger insert');
        
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        System.debug('after trigger inserted');
        
    }
    if (Trigger.isUpdate && Trigger.isBefore) {
        System.debug('before trigger update');
        
    }
    if (trigger.isUpdate && trigger.isAfter) {
        System.debug('after trigger updated');
        
    }
    if (trigger.isDelete && trigger.isBefore) {
        System.debug('before trigger delete');
        
    }
    if (trigger.isDelete && trigger.isAfter) {
        System.debug('after triger deleted');
        
    }
    if (trigger.isUndelete && trigger.isAfter) {
        System.debug('after trigger undeleted');
        
    }

}