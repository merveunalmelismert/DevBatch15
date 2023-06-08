public with sharing class ForEachLoopAgain {
   public static void listForEach(){
    list<integer> l1 = new List<Integer>{1,5,6,7,10};
    for (integer i : l1) {
        system.debug(i);

        //i->1
        //i->5

         //i->6

        //i->7
        //i->10
        
    }
   }
   public static void listForEach2(){
    list<integer> l1 = new List<Integer>{1,5,6,7,10};
    Integer sum = 0;

    for (integer i : l1) {
        sum+=i;
        str +=i;
        system.debug(i);
    }
    
}
}