@istest 
public class casesQueueableTest {
    @istest 
    public static void testCases1(){
        //1.prepare data
        list<case> listcase = new list<case>();
        //we want to insert more than 200 cases in one dml/
        for (integer i=0; i<505; i++) {
            case c = new case(subject = 'there is a bug' , Description ='resolve it' , Status = 'New', Origin = 'Web');
            listcase.add(c);
        }
        insert listcase;
        Account ac = new Account (name= 'default test acc');
        insert ac;

        //2.start test and stop test
        //2.1 enqueue job 
        Test.startTest();
        CasesQueueable cq2 = new CasesQueueable(ac.id, listcase); //this willcall line 8
        system.enqueueJob(cq2);
        test.stopTest();
       
        //3.assert
        List<Case> allCases = [select id, AccountId from case WHERE accountid != null ];
        assert.areEqual(505, allCases.size());
        assert.isTrue(allCases[0].accountid != null);
    }
}