public class DML2_Assgn {
  public static void insert_dml() {
    account acc = new account();
    acc.Name = 'Merve Assignment';
    insert acc;
    account acc2 = new account();
    acc2.name = 'Merve Assignment2';
    insert acc2;
    account acc3 = new account();
    acc3.Name = 'Merve Assignment 3';
    insert acc3;
  
  }

  public static void updating_dml() {
    Account acc = new Account();
    acc.name='Account created';
    insert acc;
    acc.name='account updated';
    update acc;
    
  }
}