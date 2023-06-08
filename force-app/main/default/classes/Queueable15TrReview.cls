public class Queueable15TrReview implements Queueable {
    //accountlardan annual revenuesi 10000 olanlara birer contact create edip baglayalim.
    public List<Account> accList = [select id, name from Account WHERE AnnualRevenue =10000];
    public void execute(QueueableContext context){
        System.debug('Queueuable first calisti...');
        List<Contact> conList = new List<Contact>();
        if (!accList.isEmpty()) {
            for (Account acc : accList) {
                Contact con = new Contact();
                con.LastName = 'Contact ' + accList.indexOf(acc); // normal sartlarda fori methodunun icinde yazarak +i yazabilirdik fakat dinamic yapmak icin indexof() yazarak dinamic hale getirerek kullanabiliriz. 
                //simdi ilgili accounta baglayalim

                con.AccountId = acc.Id;

                conList.add(con);
            }
            insert conList;
        }

    }
   
}