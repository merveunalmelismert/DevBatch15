public class Queueable15TrReview2 implements Queueable{
    //Queuable2=> Annual Revenuesi 10000 olan accountlara bağlı olan contaclarin lead source ni 'Partner Referal' yapın..

    Public static List<Contact> conList = [select id, leadSource from Contact WHERE AccountId != null AND Account.annualRevenue =10000 ];

    public void execute(QueueableContext context){
        System.debug('Queueable second calisti...');
            if (!conList.isEmpty()) {
            for (Contact con : conList) {
                con.LeadSource = 'Partner Referal';
            }

            update conList;
        }
       
    }
}