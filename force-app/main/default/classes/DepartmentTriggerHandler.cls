public class DepartmentTriggerHandler {
   @future 
   public static void createDefaultEmployee(Set<Id> depIds) {
    List<Employee__c> listEmp = new List<Employee__c>();
    for (Id eachId: depIds) {
        employee__c e = employee__c(Name__c = 'Richard', Last_Name__c = 'Milles', Department__c = eachId, JoinDate__c = date.today());
        listEmp.add(e);        
    }
    
    insert listEmp;
   }
}