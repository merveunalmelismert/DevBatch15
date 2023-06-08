List<Account> accList = [select id, name from account];
for (Account acc : accList) {
    if (acc.Name.contains('update')) {
        acc.Name = acc.name.remove('update');
    }
}


    BatchApex15TRreview b15 = new BatchApex15TRreview();
    Database.executeBatch(b15, 5);
    Database.executeBatch(new BatchApex15TRreview(),5);


Queueable15TrReview q15 = new Queueable15TrReview();
system.enqueueJob(q15);

System.enqueueJob(new Queueable15TrReview());

system.enqueueJob(new Queueable15TrReview2());
