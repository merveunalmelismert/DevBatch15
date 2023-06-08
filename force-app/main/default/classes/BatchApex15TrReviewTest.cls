@istest 

public class BatchApex15TrReviewTest {
    @TestSetup
    static void makeData(){
        List<Account> accList = new List<Account>();
        for (Integer i=1;   i<=950; i++) {
            Account acc = new Account();
            acc.Name = 'account ' +i;
            accList.add(acc);
            
        }
        insert accList;
    }
    @istest 
    private static void BatchApexClassTest() {
        
    }
}