public class DmlDemo2 {
    public static void insertRelatedRec2() {
        
    //get latest created department
    //create one employee for that department
    department__c d = [Select is from department__c order by CreatedDate DESC];
    //create new instancce

    Employee__c e = new Employee__c();
    e.First_Name__c = 'Don';
    e.Last.Name__ c ='Eladio';
    e.salary__c =500000;
    e.department__c = d.Id;
    e.Country__c = 'Mexico';
    insert e;
    System.debug('employee '  +e );
    }
}