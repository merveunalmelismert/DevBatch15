public class DepartmentsBatch implements Database.Batchable<sObject> {
    //1.start
    public Database.QueryLocator start(Database.BatchableContext bc) {
        System.debug('inside start method');
        return Database.getQueryLocator([select id, numberofemployees__c,(select id from employees__r) from Department__c]);

    }
    public void execute (Database.BatchableContext bc, list<department__c> scopeDep) {
        System.debug('inside exevute method');
        for (department__c eachDep : scopeDep) {
            //how to ger count of employees?
            if (eachDep.employees__r != null) {
                eachDep.numberofemployees__c = eachDep.employees__r.size();
            }
            
        }

        UPDATE scopeDep;
        
    }

    public void finish(Database.BatchableContext bc) {
        System.debug('finished.');
        
    }
}