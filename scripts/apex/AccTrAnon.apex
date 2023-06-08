List<account> listAcc = new list<account>();
for (Integer i = 0; i < 5; i++) {
    account ac = new account();
    ac.Name = 'test acc trigger ' + i;
    //add account to list
    listAcc.add(ac);
}
insert listAcc;


    // //before insert.  INSERT = CREATE = New Record 
    //     //Two context variables. isInsert && isBefore
    // if(trigger.isInsert && trigger.isBefore){
    //     system.debug('before insert trigger called');
    // }
    //  //after insert. 
    //     //Two context variables. isInsert && isAfter
    // if(trigger.isinsert && trigger.isAfter){
    //      system.debug('after insert trigger called');
    // }

    // //before Update.  Update = Edit = Change Record = 
    //     //Two context variables. isUpdate && isBefore
    // if(trigger.isUpdate && trigger.isBefore){
    //     system.debug('before Update trigger called');
    // }
    //  //after Update. 
    //     //Two context variables. isUpdate && isAfter
    // if(trigger.isUpdate && trigger.isAfter){
    //      system.debug('after Update trigger called');
    // }







    // //.isInsert -> true, while inserting record. ()
    // if(trigger.isInsert){
    //     system.debug('insert account trigger');
    // } 
    // //.isUpdate -> true, while updating record. 
    // if(trigger.isUpdate){
    //     system.debug('update account trigger');
    // }

    // //isBefore will be true when trigger is running in BEFORE save context
    // if(trigger.isBefore){
    //      system.debug('before insert account trigger');
    // } 
    // //isAfter will be true when trigger is running in AFTER save context
    // if(trigger.isAfter){
    //     system.debug('after insert account trigger');
    // }
    
}



