@istest 
public class AccountTriggerHandlerFutureTest {
    @istest 








    @istest 
    private static void updateDescription() {
        Account acc = new Account();
        acc.Name = 'Account Future Test';
        insert acc;

        Opportunity opp = new Opportunity();
        opp.Name = 'Opportunity Future Test';
        opp.CloseDate = date.today().addDays(30);
        opp.StageName = 'Prospecting';

        opp.AccountId = acc.id;
        insert opp; 

        Contact con = new Contact();
        con.LastName = 'Contact Future Test';
        con.AccountId = acc.id;
        insert con; 



        acc.Description = 'Account Future Method ile bu mesaj eklendi';
        test.startTest();
        update acc;
        test.stopTest();
    }
}