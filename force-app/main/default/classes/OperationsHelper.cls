public class OperationsHelper {
    public decimal largestOutOfTwoNumbers (decimal dec1, decimal dec2) {
        decimal large = math.max (dec1,dec2);
        return large;

}
    public decimal IfLargest (decimal dec1, decimal dec2){
    decimal sonuc; 
    if ((dec1>dec2)) { 
    sonuc=dec1;
    }else{
    sonuc=dec2;
    }
    return sonuc;
}

public decimal smallestOufOfThreeNumbers (decimal x, decimal y, decimal z){
    decimal smaller = math.min(x,y)
    return smaller;
}
}