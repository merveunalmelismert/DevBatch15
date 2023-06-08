public class AccountQueueableExample {
    list<account> accList;
    public AccountQueueableExample(List<Account>accList) {
        this.accList = accList;
    }
    public void execute(QueueableContext qc) {
        for (Account eachAcc : accList) {
            eachAcc.name+= '---SI';
        }
        update accList;
    }
}