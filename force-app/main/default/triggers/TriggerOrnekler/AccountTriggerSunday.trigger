trigger AccountTriggerSunday on Account (before insert, before update, after insert, after update) {
// if (Trigger.isBefore&& Trigger.isUpdate) {
//     for (Account eachAcc : trigger.new) {
//         if (eachAcc.AnnualRevenue < trigger.oldMap.get(eachAcc.Id).AnnualRevenue) {
//             System.debug('annual revenue for an account cannot be reduced');
//             eachAcc.AnnualRevenue.addError('annual revenue for an account cannot be reduced');
//         }
//     }
// }
// if (trigger.isBefore&&trigger.isUpdate) {
//     for (Account eachAcc : trigger.new) {
//         if (eachAcc.Rating == 'hot' && eachAcc.'buraya rollup summary field olusturduk,eachopsayisi diye.' > 3) {
            
//         }
        
//     }
    
// }

Set<ID> accHotId = new set<id>();
if (trigger.isBefore&&trigger.isUpdate) {
    for (Account eachAcc : trigger.new) {
        if (eachAcc.Rating == 'Hot') {
            accHotId.add(eachAcc.Id);        
        }
    }
    List<Account> listAcc = [];
    for (Account eachAcc2 : listAcc) {
        if (eachAcc2.Opportunities.size()) {
            System.debug('account is now hot and it has ' +eachAcc2.Opportunities.size()+ 'opportunities');
            
        }
        
    }

    
}
}