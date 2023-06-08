//database.executeBatch returns JOB ID.
//5 is the size of records
//batch class new instance.
DepartmentsBatch db = new DepartmentsBatch();
Id JobId = Database.executeBatch(db, 5);
System.debug('job id is '  + JobId);