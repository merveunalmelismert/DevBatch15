public class SoqlDemo3 {
  //we will be quering opportunity and we will get account name, industry field ((  CHILD TO PARENT ' YAPIYORUZ SUANDA'))
  public static void oppAccQuery() {
   List<Opportunity> listOpp = [Select id, name, amount,account.name, account.industry from Opportunity WHERE account.industry ='energy'];
for (Opportunity eachOpp : listOpp) {
   System.debug('account name is ' +eachOpp.Name + 'opp amount is ' +eachOpp.Amount);
   System.debug('account name is ' +eachOpp.account.Name);
   System.debug('energy industry '  +eachOpp.account.Industry);
}   
}
 // for each department we want to print number of employees, first name, last name and total salary for each department here you go;

 public static void depatmentDetails() {
  List<department__c> listDept = [SELECT Name__c, (SELECT Id, First_name__c, Last_Name__c, Country__c,  Salary__c FROM Employees__r) from department__c];
  Decimal totalSalary = 0;
  for (department__c eachDept : listDept) {
    System.debug('each department name is '  +eachDept.Name__c);
  List<employee__c> listEmp = eachDept.Employees__r;
  decimal deptSalary = 0; 
  for (employee__c eachemp : listEmp) {
    System.debug('each employe name is ' + eachemp.First_name__c + ' last name is ' + eachemp.Last_Name__c + 'each country is ' +eachemp.Country__c );
    deptSalary =+ eachemp.Salary__c;
    totalSalary=+ eachemp.Salary__c;
  }
    System.debug('department total salary is  ' + deptSalary)
;  }
  System.debug('total salary is '  +totalSalary);
  
 }

}