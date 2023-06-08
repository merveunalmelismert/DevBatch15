public class DummyDataCreation {
   public static void UppdateOppDesc() {
    List<Opportunity> listOpp = [select id, name, Amount from Opportunity WHERE amount != null order by Amount desc limit 10 ];
    System.debug(listOpp);
    for (Opportunity eachopp : listOpp) {
        eachopp.Description ='this is one of the top 10 opp in this year';

    }
    update listOpp;

    for (Opportunity eachopp : listOpp) {
        System.debug(eachopp + 'one of the top 10 opp');
        
    }
   }

   public static List<Opportunity> createOpp(string paramAccountId, integer n ) {
    List<Opportunity> listOpp = new List<Opportunity>();
    if (n==0) {
        System.debug('pls tell us how many opp needs to be created');
    }else {
        Account acc = [SELECT id, name, annualRevenue FROM Account WHERE id =: paramAccountId LIMIT 1];
        
        for (Integer i = 0; i < n; i++) {
            Opportunity opp = new Opportunity();
            opp.Name = acc.Name;
            opp.AccountId = acc.Id;
           // opp.AccountId = acclist[0].id;
           opp.CloseDate = date.today().addYears(3);
           opp.StageName = 'Prospecting';
           opp.Amount = acc.AnnualRevenue/n;
           listOpp.add(opp);
        }
        insert listOpp;
       
    }
    System.debug(listOpp);
    return listOpp;
    
   }
   //bagli ya da bagli olmayan objectlerde id ye gore filtre yap, ilgili listeyi in ve nothing ile cekebilirsin.
   public static void AccNoCon() {
    List<Account> accList = [Select id, name from Account WHERE id NOT IN (SELECT AccountId from Contact) ];
    List<Contact> conList = new List<Contact>();
        for (Account eachAcc : accList) {
            Contact c1 = new Contact();
            c1.LastName = eachAcc.Name;
            c1.AccountId = eachAcc.Id;
            conList.add(c1);

            
        }
        insert conList;
    
   }

 public static void deleteOpp() {
    List<Opportunity> opp = [Select id, name, amount, StageName FROM Opportunity WHERE Amount< 20000 AND StageName = 'Closed Lost' ];
    opp.size();
    delete opp;

    
 }
 public static list<account> createAccount(integer n) {
    List<Account> accList = new list<Account>();
    for (Integer i = 0; i < n; i++) {
        Account acc = new Account();
        acc.Name='Assignment Day';
        acc.Rating='Warm';
        acc.Phone='12232';
        acc.ShippingCity='San Francisco';
        acc.BillingCity='San Francisco';
        accList.add(acc);
        
    }
    insert accList;
    return accList;
    
 }
 public static void createContacts(integer n, List<account> paramListAcc) {
    List<Contact> conList = new List<Contact>();
    for (Account eachAcc : paramListAcc) {
        for (Integer i = 0; i < length; i++) {
            
        }
        
    }

 }

    

}