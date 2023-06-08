public class AccountScheduable {
    public void execute(SchedulableContext sc){
        //we will execute accounts batch
        AccountBatch ab = new AccountBatch();
        Database.executeBatch(ab, 50);




        //database.executeBatch returns JOB ID.
        //5 is the size of records.
        //batch class new instance
        DepartmentsBatch db = DepartmentsBatch();
        id JobId = database.executeBatch(db, 5);
        system.debug('Job ID is ' + JobId);
    }
}