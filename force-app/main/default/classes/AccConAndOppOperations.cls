public class AccConAndOppOperations {
   public static list<Account> allAccount() {
    List<Account> accList = [select id, name, annualrevenue, type, AccountSource from Account];  
    return accList;
 }
   public static void allOpp(string paramleadSource, string paramstage){
    List<Opportunity> opp = [Select id, name, leadSource, stageName from Opportunity WHERE LeadSource=: paramleadSource and stageName=: paramstage];
    System.debug(opp);
    
   }

   //public static void allAccount1() {
    //List<Account> accList = [select id, name,annualRevenue, type (select name, amount, stagename from Opportunities WHERE stagename = 'Closed Won' ) from Account WHERE type = 'Customer - Direct'];
    //for (Account eachacc : accList) {
      //  System.debug(eachacc.Account.name , eachacc.AnnualRevenue);
        //List<Opportunity> oppList = each.Opportunities;
        //for (Opportunity eachOpp : oppList) {
        //    System.debug(eachOpp);
            
        //}
        
    //}    
   //}
    
    public static Account createAccount(String paramName, Decimal paramAnnualRevenue, String paramtype) {
        Account acc = new Account();
        if (paramName!= null) {
            acc.Name = paramName;
            acc.AnnualRevenue = paramAnnualRevenue;
            acc.Type = paramtype;
            insert acc;
        
        }else {
            System.debug('account without name cannot be created');
            
        }
        return acc;
       
        
    }
    public static decimal SomeOfOpps() {
        Decimal amounts = 0;
        List<Opportunity> oppList = [Select id, name, amount from Opportunity WHERE Amount != NULL];

        for (Opportunity eachOpp : oppList) {
            amounts += eachOpp.Amount;
        
            
        }
        System.debug('total of opp amounts is  '+amounts);
        return amounts;

        
    }
   public static List<Account> allAccount2 (string paramstagename) {
    List<Account> accList = [select id, name FROM Account WHERE Id in(SELECT account.id FROM Opportunity where StageName =: paramstagename)];
    System.debug(accList);
    return accList;
    
   }
   public static List<Account> allAccount3() {
        List<Account> accList = [ select id, name FROM Account WHERE id IN (select accountId from Contact)];
    
   }
    
    
   public static void runDynamicContactQuery(List<String>) {

    

    List<Contact>

    for (Contact eachCon : conList) {
        System.debug('each contact ' + eachCon);
        
    }
   }
}