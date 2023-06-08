//fetch account records that we created last month (MAY 2023)
List<Account> allacc = [Select id, name from account where createdDate = last_month];
AccountQueueableExample aq = new AccountQueueableExample(allacc);
Id queueId = system.enqueueJob(aq);
//we can get status of the job via JOB ID here.
AsyncApexJob ap =[Select status, JobType, JobItemProcessed, Id, MethodName, NumberOfErrors from AsyncApexJob]