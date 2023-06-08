@istest 
public class AccountsBatchTest {
    @istest  
    public static void testBatch1() {

    List<Account> listAcc = new List<Account>();
    for (Integer i = 0; i < 900; i++) {
        Account ac = new Account();
        ac.Name = 'test acc ' + i;

        //add account to list 
        listAcc.add(ac);
        
    }
    insert listAcc;
        
    //for async apex, start and stop test are mandatory.
    test.startTest();
    AccountBatch ab = new AccountBatch();
    database.executeBatch(ab, 500);
    test.stopTest();

    //now asserting
    List<Account> allAccounts = [select id, descripton from Account];
    for (Account eachacc : allAccounts) {
        Assert.isTrue(eachacc.Description.contains('batch'));
    }

    }
}