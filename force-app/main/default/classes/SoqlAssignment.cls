public class SoqlAssignment {
    public static void ContactQ() {
        List<Contact> lstContact = [SELECT id, name, accountId, account.name, account.id FROM Contact];
        for (Contact eachcn : lstcontact) {
            System.debug('each account is ' + eachcn.accountId+ 'and account name is ' + eachcn.account.name );
        }
    }

    public static void AccountQ() {
        List<Account>lstAccount = [select id, name, (SELECT id, name FROM contacts) FROM Account];
        for (Account eachacc : lstAccount) {
            System.debug('each account name is '  + eachacc.Name);   
        }
        for (Account eachcnt : lstAccount) {
            System.debug(' each contact id is ' + eachcnt.id);
            System.debug('each contact name is ' +eachcnt.Name);
            
        }
        
    }
    public static void totalNumbers() {
        List<Contact> appNum = [select id, name, account.name FROM Contact WHERE account.Name like '%Apple%' ];
        System.debug(appNum.size());
        List<Contact> metaNum = [select id, name, account.name FROM Contact WHERE Name = 'Meta'];
        System.debug(metaNum.size());
        List<Contact> teslaNum = [select id, name, account.name FROM Contact where Name = 'Tesla'];
        System.debug(teslaNum.size());
              
    }
}
