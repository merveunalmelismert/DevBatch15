public class CML3_Assgn {
   public static void createBulkContacts() {
    list<Contact> listc = new List<Contact>();
for (Integer i=0; i<4; i++) {
    Contact nc = new Contact();
    nc.FirstName='Mark';
    nc.LastName='Rufallo';
    listc.add(nc);
}    

for (Integer i=0; i<3; i++) {
    Contact nc2 = new Contact();
    nc2.FirstName='Chris';
    nc2.LastName='Hemsworth';
    listc.add(nc2);
    
}
for (Integer i=0; i<3; i++) {
    Contact nc3 = new Contact();
    nc3.FirstName ='Scartlett';
    nc3.LastName = 'Johansson';
    listc.add(nc3);
    
}
   }
   public static void updateBulkContacts(string lastname, string phonenumber) {
    List<Contact> updateContactsPhoneNumber =[select id, lastname, phone FROM Contact WHERE LastName=:lastname ];
    List<Contact> updatedContacts = new List<Contact>();
    for (Contact eachCon : updateContactsPhoneNumber) {
        eachCon.Phone = phonenumber;
        updatedContacts.add(eachCon);
        
    }
    if (!updatedContacts.isEmpty()) {
        update updatedContacts;
        
    }
    return updateContactsPhoneNumber.size();
    
   }
}