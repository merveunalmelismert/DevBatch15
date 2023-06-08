public class SOQL_Assignment {
   public static void soql_WhereClaus(){
    List<Contact> listCon = [SELECT id FROM Contact WHERE name LIKE 'A%'];
    System.debug('list of contacts whose names starts with letter A ' + listCon);
    System.debug('size of names '  + listCon.size() );

   }

   public static void soql_FromMethod() {
    List<Contact> lstcontact = [SELECT id, lastname, phone FROM Contact ];
    for (Contact eachCon : lstcontact) {
        System.debug('each contact record with lastname==> ' +eachCon.lastName);
        System.debug('each contact record with phone number ===> '  +eachCon.phone);
        
    }
    
   }
}