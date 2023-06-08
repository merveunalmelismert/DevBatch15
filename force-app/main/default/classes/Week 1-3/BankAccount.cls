public with sharing class BankAccount {
    //data members
    //class variables
 
    public string accountNumber;
    private decimal balance;
    string accountHolderName;
    string bankName;
public void PrintDetails(){

    system.debug('acc number '  + accountNumber);
    system.debug('acc balance' + balance);
    system.debug('account holder name '  +accountHolderName);
    system.debug('Bank name '  + bankName);
}

//CONSTRUCTOR;
public BankAccount(){
    //Automatically called when we create new instance.
    
}

}