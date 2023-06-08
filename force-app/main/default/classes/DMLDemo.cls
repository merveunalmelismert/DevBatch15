public class DMLDemo {
    public static void dmlInsertDemo1() {
        //create one account record
        Account acc = new Account(); //create new instance of account
        acc.Name = 'Salesforce';
        acc.Website = 'www.salesforce.com';
        //dml
        insert acc;
        System.debug('insterded acc ' +acc );
    }
    public static void dmlInsertDemoC01() {
        //create new instance 
        Department__c d = new Department__c();
        //set the field names
        d.name__c= 'Human Resource';
        d.Short_Code__c ='HR';
        //instet dml
        insert d;

    }
    public static void dmlInstertDemoCO2() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Learn DML';
        sp.Status__c = 'New';
        insert sp;
        


    }

    public static void dmlInsertDemoCO3() {
        Employee__c emp = new Employee__c();
        emp.First_Name__c = 'Merve';
        emp.Last_Name__c = 'Unal';
        emp.Country__c = 'USA';
        emp.Email__c = 'merveunal@gmail.com';
        emp.Salary__c = 42347238;

        insert emp;
        
    }

    public static void dmlUpdateDemo1() {
        //create account 
        account acc = new Account();
        acc.Name = 'Softinnovas';
        System.debug('before insert DML:'  +acc);
        insert acc;
        System.debug('after inssert DML:' +acc);

        //update the record
        acc.Name = 'Softinnovas INC';
        acc.Website = 'wwww.softinnovas.com';

        update acc;
        System.debug('after update dml' +acc);
        
    }
    public static void dmlUpdateDemo2() {
        account acc=[select id,name from account order by createddate DESC limit 1];

        acc.name = 'Softinnovas inc';
        System.debug('website  ' + acc.Website); //not work
        update acc;
        
    }
}