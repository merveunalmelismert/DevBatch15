public class AccountBatch implements Database.Batchable<SObject> {
    //start
    //execute
    //finish

    //first method to execute is STAR
        //SOQL query to fetch ALL RECORD 
    public Database.QueryLocator start(Database.BatchableContext bc){
            //inside this we will write SOQL query
            Database.QueryLocator acc = database.getQueryLocator([select id, name, description, active__c from Account]);

        }

        public void execute(Database.BatchableContext bc, list<account> listAcc) {
            list<account> updateAcc = new List<Account>();
            for (Account ac : listAcc) {
                if (ac.active__c != 'No') {
                    ac.description += '.... updated via batch';
                    updateAcc.add(ac);
                    
                }
            }
            

            update updateAcc;
        }

        public void finish (Database.BatchableContext bc) {
            System.debug('BATCH PROCESSED. ENJOY');
            
        }

}