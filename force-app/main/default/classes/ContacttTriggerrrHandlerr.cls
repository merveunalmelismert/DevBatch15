public class ContacttTriggerrrHandlerr {
    public static void printLastName(
        List<Contact> cTriggerNew, 
        Map<id, Contact> cTriggerOldMap) {
            for (Contact con : cTriggerNew) {
                System.debug('yeni last name = '  + con.LastName + 'eski last name '  + cTriggerOldMap.get(con.id).LastName );
                
            }
        
    }
}