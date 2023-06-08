public class OppTriggerHandlerTRReview {
//    public static void stageNameUpdate(
//     List<Opportunity> tNew, 
//    List<Opportunity> tOld,
//    Map<id, Opportunity> tNewMap,
//    Map<id, Opportunity> tOldMap ) {
// //trigger.new i for each dongusunun icine alalim, sonra her bir recordun stage name kontrolunu yapalim
//     for (Opportunity opp : tNew) {
//         if (opp.StageName != tOldMap.get(opp.Id).StageName) {
//             if (opp.StageName == 'Closed Lost') {
//                 opp.Description = 'çok üzgünüz';
//             }
//             if (opp.StageName == 'Closed Won') {
//                 opp.Description ='yaşasın';
                
//             }
//             if (opp.StageName == 'Prospecting') {
//                // opp.addError('süreci başa döndüremezsiniz..');bu sekilde de olabilir.
//                 opp.StageName.addError('süreci başa döndüremezsiniz..');


                
//             }
//         }
        
        
        
  //  }
    
 //  }



 public static void stageNameUpdate(List<Opportunity> tNew, List<Opportunity> tOld, Map<Id, Opportunity> tNewMap, Map<Id, Opportunity> tOldMap) {
    //trigger new for each icine aliyoruz. her bir recordun stage name kontrolunu yapiyoruz..
    for (Opportunity opp : tNew) {
        if (opp.StageName != tOldMap.get(opp.id).StageName) {
            if (opp.StageName == 'Closed Lost') {
                opp.Description = 'Cok uzgunuz...';
            }
            if (opp.StageName == 'Closed Won') {
                opp.Description = 'Yasasin...';
            }
            if (opp.StageName == 'Prospecting') {
                //opp.addError('Sureci basa donduremezsiniz..');
                opp.StageName.addError('Sureci basa donduremezsiniz..');
            }
        }
    }
}
}