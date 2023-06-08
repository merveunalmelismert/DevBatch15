@istest
public class DmlDemo15Test {
   @istest
   private static void testDML1(){
    //this is create one record
    //Where? it not create record in th org.
    DmlDemo15.dmlInsertDemo1();

    //how to assert if record is created?
    //soql
    List<Account> listAcc = [select id, name from account];
    //in test word we cannot access or create, update, delete record on org.
    system.assertEquals(1, listAcc.size());
    Assert.areEqual(1, listAcc.size());

    Assert.areEqual('Salesforce', listAcc[0].name);
    Assert.areNotEqual('softinnoas', listAcc[0].Name);

    
   }

   @istest
   private static void testDML3 (){
    //we prepare the data before we call it
    Account acc3 = new Account (name = 'acc test');
    insert acc3;

    //cal method
    DmlDemo15.dmlUpdateDemo2();

    //what to assert?
    //what functionality is our method implemeting?
    //method is updateing name
    //we will assert if name is updated.

    Account accAssert = [select id, name from account where id = :acc3.id];
    Assert.areEqual('Softinnovas Inc.', accAssert.Name);
   }

   @istest
    private static void testDML4(){
    department__c dept = new department__c (name__c = 'QA');
    insert dept;


    DmlDemo15.insertRelatedRec2();

        Employee__c emp = [select id, name,first_name__c,last_name__c,department__c from employee__c WHERE department__c= : dept.id limit 1 ];
        Assert.areEqual('Don', emp.first_name__c);
   }
   @istest
   @isTest
    private static void testDML5() {
        //prepare data
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 1555; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
           
            //add account to list
            listAcc.add(ac);
        }

        //if list is not empty then only insert
        if (!listAcc.isEmpty()) {
            insert listAcc;//insert 155 accounts
        }
        //in data preparation part we are consuming some limits.
        
        //RESET governor limit 
        Test.startTest();
        //governor limits are RESET.
            //full governor limits available (100 soql, 150 dml, 10k records to update, 50k recordss)
        //call method
            //this method a little LESS limit available. (we consumed some while preparing data)
        DmlDemo15.bulkUpdateRight();
        Test.stopTest();

        //assertion
        account acc = [select id, name from account limit 1];
        assert.isTrue(acc.name.contains('v2'));

    }

  
}