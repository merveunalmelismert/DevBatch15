trigger OpportunityTrigger2 on Opportunity (before insert, before update, after insert, after update) {
    if (Trigger.isBefore && Trigger.isUpdate) {
        OppTriggerHandlerTRReview.stageNameUpdate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
 //soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver.














    //    List<Opportunity> oppList = trigger.new;
//     if (Trigger.isAfter&&Trigger.isInsert) {
//         for (Opportunity eachOpp : oppList) {
//             System.debug(eachOpp.Name + '-' + eachOpp.CloseDate + '-' + eachOpp.Amount);
            
//         }
//         System.debug('total number of opps ' +oppList.size());

//     }


// if (Trigger.isBefore&& trigger.isUpdate) {
//     for (Opportunity eachopp : trigger.new) {
//         if (eachOpp.stageName != trigger.oldMap.get(eachOpp.Id).StageName) {

            
//         }
//         System.debug(eachOpp.Description + eachOpp.Name);

        
//     }
    
// }







}