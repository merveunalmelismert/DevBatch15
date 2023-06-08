public class ModernMaths {
  public static void printFactors(integer Num){
    List<Integer> factorNum = new List<Integer>();
    for (integer i=1; i< Num; i++) {
        Integer remainder = math.mod(Num, i);

        if (remainder==0) {
            factorNum.add(i);
     }
}
    system.debug(factorNum);
        
    }
  



}
