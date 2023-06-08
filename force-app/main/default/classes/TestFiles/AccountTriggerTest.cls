@istest 
public class AccountTriggerTest {
    //we don't call test method any other class we just run test and system calls each yest method on its own. 
    //so it can be pub;lic or private
    @istest 
   private static void testAccTrg1() {
    List<Account> listAcc = new List<Account>();
    Account acc = new Account();
    acc.Name = 'JN Test';
    acc.Industry='Energy';
    listAcc.add(acc);
    
    Account acc2 = new Account();
    acc2.Name = 'UN Test';
    acc2.Industry='Energy';
    listAcc.add(acc2);

    Account acc3 = new Account();
    acc3.Name = 'TN Test';
    acc3.Industry='Energy';
    listacc.add(acc3);

    insert listAcc;
    List<Account> list1 = [select id, name from Account];
    Assert.areEqual(3, list1.size());

    //delete any one account
    delete acc2;
    List<Account> list2 = [select id, name from Account];
    Assert.areEqual(2, list2.size());

    //undelete record
    undelete acc2;

    List<Account> list3 = [select id, name from Account];
    Assert.areEqual(3, list3.size());


   }
}