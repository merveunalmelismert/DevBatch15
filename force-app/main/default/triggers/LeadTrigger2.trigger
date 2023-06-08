trigger LeadTrigger2 on Lead (before insert, before update, after insert, after update) {

    if (Trigger.isBefore&&Trigger.isInsert) {
        for (Lead eachLead : trigger.new) {
            if (eachLead.LeadSource == 'web') {
                System.debug('rating should be cold'); 
            }else {
                System.debug('rating should be hot');
            }
            
        }
        
    }

}