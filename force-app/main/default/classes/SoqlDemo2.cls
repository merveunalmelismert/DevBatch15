public class SoqlDemo2 {
   public static void accountContactSOQL() {
    List<Contact> listCon = [SELECT id, name, account.name, account.industry, Account.annualRevenue, accountid FROM Contact];
   
    for (Contact eachContact : listCon) {

        System.debug('contact name is  '   +eachContact.Name);
        String accName = eachContact.Account.name;
        System.debug('account name is '  + accName + 'acc industry is ' + eachContact.Account.Industry);
        decimal accRevenue = eachContact.Account.AnnualRevenue;
        if (accRevenue != null) {
            totalRev += accRevenue;
            
        }
        System.debug('account revenue is '+ accRevenue);
        System.debug('-----');
        
    }

    System.debug('acc revenue ' + totalRev);
      
}
public static void childToParent2() {
    list<Salesforce_Ticket__c> listST = [select id, name, subject__c, status__c, salesforce_project__c,salesforce_project__r.status__c, salesforce_project__r.project_name__c from salesforce_ticket__c];
    //print ticket name and project name only for those records where project status us new
    for (SalesForce_Ticket__c eachST : listST) {
        if (eachST.salesforce_project__r.status__c == 'New') {
            
        }
        
    }
    
}




}