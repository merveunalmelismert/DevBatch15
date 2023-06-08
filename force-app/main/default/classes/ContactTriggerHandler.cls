public class ContactTriggerHandler {
    public static void validateContactUpdate1(
        List<Contact> cTriggerNew, 
        List<Contact> cTriggerOld, 
        Map<id, Contact> cTriggerNewMap, 
        Map<Id,Contact> cTriggerOldMap) {

            // don;t allow user to update leadsource 
            //for each for trigger.new
            //check if leadsource is changed?
            //old contact lead source != new contact lead source
            //we will add error!

            for (contact newContact : cTriggerNew) {
                if (newContact.LeadSource != cTriggerOldMap.get(newContact.id).leadsource) {
                    newContact.LeadSource.addError('Cannot update leadsource! Plse USER!');
                    
                }
            }

        for (Contact newContact : cTriggerNew) {
            //check if existing leadsource was partner referral.
            //newContact.LeadSource can be partner referral.No error there
            //old contact's leadsource is partner referral then throw error.

            Contact oldContact = cTriggerOldMap.get(newContact.Id);
            if (oldContact.LeadSource == 'partner referral') {
                newContact.addError('Cannot update contact with lead source as Partner Referaal');
                
            }
        }
    }






}