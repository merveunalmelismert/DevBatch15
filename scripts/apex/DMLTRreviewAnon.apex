//required alanlarin doldurulmasi gerekir, aksi halde insert gerceklesmez
Account acc = new account();
acc.Name =' Account DML ';
acc.AnnualRevenue = 3768687;
acc.industry = 'Energy';
insert acc; 

Contact con = new Contact();
con.LastName = 'Contact DML';
con.AccountId=acc.id;
con.LeadSource ='web';
insert con;

Salesforce_Project__c sp = new salesforce_Project__c();
sp.Project_Name__c = 'salesforce project dml';
sp.status__c = 'New';
insert sp;


//parent child ilisikisi kurma
Account acc2 = [select id from account where name = 'Andy Young' limit 1];
contact con2 = new Contact();
con2.LastName ='contact Dml 2';
con2.AccountId=acc2.id;
insert con2;

Salesforce_Project__c sp = new Salesforce_Project__c();
sp.Project_Name__c = 'salesforce project dml';
sp.status__c='News';
insert sp;

Salesforce_Ticket__c st = new Salesforce_Ticket__c();
st.salesforce_Project__c = sp.id;
st.Subject__c ='salesforce ticket dml';
insert st;

//update
account acc3 = [select id, name from account where name = 'ACCOUNT dml' limit 1];
acc3.name = 'Ztest';
update acc3;

//couklu update
//en yuksek anual revenue olan 5 account i getirme
List<Account> accList = [Select id, name, AnnualRevenue from account where AnnualRevenue != null order by AnnualRevenue desc limit 5];

//her recordun descriptionina bugunun tarihi itibariyle yillik ciro en yuksek 5 sirketten biri...

for (Account eachacc : accList) {
    eachacc.Description = date.today() + 'itibari ile yillik cirosu en yuksek olan 5 sirketten biri';

    
}
    update accList;

//5 tane account create edin ve her accounta bagli 5 tane opportunity olsun
List<Account> accList2 = new List<Account>();
for (Integer i = 0; i < =5; i++) {
    Account acc = new Account();
    acc.Name='Dml Demo Account' + i;
    accList2.add(acc);
    // insert acc; for dongusu icinde DML yapilmaz!!!!
}
insert accList2;
List<Opportunity> oppList = new List<Opportunity>();
for (Account eachacc : accList2) {
    for (Integer i = 0; i <=5; i++) {
        Opportunity opp = new Opportunity();
        opp.Name ='DML Demo Opportuniy ' + i;
        opp.CloseDate=date.today().addDays(30);
        opp.StageName='Prospecting';
        opp.AccountId=eachacc.Id;   
        oppList.add(opp);       
    }
    
    
}
insert oppList;