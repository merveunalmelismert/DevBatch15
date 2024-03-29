public class MapDemo2 {
   public static void mapExample2(){
    //items ---> price
    map<string, Decimal> map2 = new map<string, Decimal>();
    map2.put('apple', 2);
    map2.put('pen', 10.5);
    map2.put('shirt', 50.5);
    map2.put('laptop' ,15000.2);
    system.debug('map 2 is ' + map2);


    //prepare two maps.
    //1. all items and its prices whose values are less than 100
    //2. all items and its prices whose values are more than 100

    map<string, Decimal> lowerMap = new map<string, decimal>();
    map<string, decimal> higherMap = new map<string, decimal>();


    set<string> allItems = map2.keySet();
    for (string eachItem : allItems){

         //get value of each item
        Decimal eachPrice = map2.get(eachItem);
        if (eachPrice > 100) {
            higherMap.put(eachItem, eachPrice);
            system.debug('higher:' +eachItem + '---->' +eachPrice);
        }else {
            lowerMap.put(eachItem, eachPrice);
            system.debug ('Lower' + eachItem  + '------>'+ eachPrice);
        } 

            
        }

        system.debug('higher map is ' + higherMap);
        system.debug('lower map is ' + lowerMap);

       


    }


 public static string retrieveMonth(integer m){

    string month = ' ';

    map<integer, string> monthMap = new map<integer, string>{1 => 'January' , 2 => 'February'};
    monthMap.put(3, 'March');
    monthMap.put(4, 'April');
    monthMap.put(5,'May' );
    monthMap.put(6,'June' );
    monthMap.put(7,'July' );
    monthMap.put(8,'August' );
    monthMap.put(9,'September' );
    monthMap.put(10,'October' );
    monthMap.put(11,'November' );
    monthMap.put(12,'December' );

    //get month name from integer m(parameter)
    Boolean keyExist = monthMap.containsKey(m); //true
    if (keyExist) {
        month = monthMap.get(m);
    }else {
        month =' no such month exists.';
        
    }
    return month;
        
    }

 }

