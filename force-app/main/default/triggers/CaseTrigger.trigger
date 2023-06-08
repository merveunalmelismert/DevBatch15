// trigger CaseTrigger on Case (before insert, after insert, before update, after update ) {
//         // List<Case> caseList = trigger.new;
//         // if (trigger.isAfter && trigger.isInsert) {
//         //     for (Case eachCase : caseList) {
//         //         System.debug('case ' +  eachCase.CaseNumber+ 'was created with id ' + eachCase.Id+ 'on'+ eachCase.CreatedDate);
//         //     }
//         // }
//     if (trigger.isAfter && trigger.isInsert) {
//         for (Case eachCase : trigger.new) {
//             System.debug('case ' +  eachCase.CaseNumber+ 'was created with id ' + eachCase.Id+ 'on'+ eachCase.CreatedDate);
//         }
//            // } yukardaki ile aynisi fakat yukarda yazdigimiz sekilde liste assign etmemiz gerekiyor!!!
//            if (trigger.isAfter&& trigger.isInsert) {
//             for (case eachCase : trigger.new) {
//                 System.debug('case ' +  eachCase.CaseNumber+ 'was created with id ' + eachCase.Id+ 'on'+ eachCase.CreatedDate);      
//             }
            
//            }
//            if (trigger.isBefore&& trigger.isAfter) {
//             for (case eachCase : trigger.new) {
//                 System.debug('case origin is changed for ' + eachCase.CaseNumber);
//                 if (eachCase.Origin != trigger.oldMap.get(eachCase.Id)) {

                    
//                 }
                

                
//             }
            
//            }
//            //before eventler bir onjectin bir fieldinde degisiklik yapinca kullanilir.
//            //after eventler ise bir objectden digerine degisiklik yapilip, mudahale yapilinca kullanilabilir.
//            //process builder ve workflow ile insert and update islemi
//            //flow ile insert, update, delete
//            //trigger insert, update, delete, undelete

// }
// }