public class SoqlDemo4 {
   public static void groupBy() {
    list<aggregateResult> result = [select country__c, COUNT(id), SUM(salary__c) from Employee__c group by country__c];

    for (aggregateResult ar : result) {
        System.debug('country name is  '  + ar.get('country__c'));
        System.debug('number of employees are '  +ar.get('expr0'));
        System.debug('tota salary is ' +ar.get('expr1'));

        
    }
    List<String> l2 = new List<String>();
    string [] l3 = new List<String>();

    Account[] acc2 = [select id, name from account]; //this is array representation.this is same with list.
   }
   public static void dynamiSOQL1(string accFieldNames) {
    String query = 'select ';
    query += accFieldNames;
    query+= 'from accont' ;

    System.debug('final query is ' +query);
    List<Account> listAcc = Database.query(query);
    for (Account eachAcc : listAcc) {
        System.debug(eachAcc);
        
    }
    
   }

}