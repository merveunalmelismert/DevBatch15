public class InventoryManager {
    string productName;
    string productCode;
    integer costPrice;
    integer sellingPrice;
    public static String productCount;

public InventoryManager(){
    productCount++;
}
public InventoryManager(String productName, String productCode){
    productCount+=1;
    this.productName = productName;
    this.productCount = productCode;
}
public integer getCostPrice(){return costPrice; }
public integer getSellingPrice(){ return sellingPrice; }
public void setCostPrice (integer costPrice){
    this.costPrice = costPrice;
}
public void setSellingPrice(Integer sellingPrice){
    this.sellingPrice = sellingPrice;
}

public static productDisplay(){
    system.debug('Product name is   ' + productName);
    system.debug('Product group is  ' + productCode);
    system.debug('Product price is  ' + costPrice);
    system.debug('Selling prive is  ' + sellingPrice);
    if (calculateProfitMargin() > 0.2) {
        system.debug('Star Product');
    }else{
        system.debug('average product');
            
        }
        
    }

    private decimal calculateProfitMargin(){
        Decimal profitPercent = 0;
        profitPercent = (sellingPrice - costPrice) * 100 / costPrice;
        return profitPercent;
    }
    
}