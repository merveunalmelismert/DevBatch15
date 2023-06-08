trigger SalesForceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {

    if (Trigger.isAfter && Trigger.isInsert) {
        //call future method
        SalesforceProjectTriggerHandler.updateDescriptionFuture(Trigger.newMap.keySet());

        //call handler method to insert default salesforce ticket.
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);

    }

    if(Trigger.isBefore && Trigger.isUpdate){
        //call method to validate project completion
        SalesforceProjectTriggerHandler.validate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}