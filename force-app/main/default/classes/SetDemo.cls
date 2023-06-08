public class SetDemo {
   public static void citySet(){
    // we will create set of string and add cities. 


    set <string> cities = new Set<String>();
    cities.add('Tokyo');
    cities.add('Lisbon');
    cities.add('Berlin');
    cities.add('Lisbon');
    cities.add('Tokyo');
    cities.add('Nairobi');
    cities.add('Istanbul');
    cities.add('New York');

     system.debug('set of cities; ' + cities);
   }

   public static void randomIntegerSet() {
    Set<Integer> intSet = new Set<Integer>();

    intSet.add(15);
    intSet.add(10);
    intSet.add(15);
    intSet.add(10);
    intSet.add(25);
    intSet.add(15);
    system.debug(intSet);


   }

   public static void setFromList(){
    //addAll -> it adds all elemts from one list or set to another set.
    List<Integer> li = new List<Integer>{10,15,15,21,21,55,101,101};
    system.debug('list integer-->' + li);
// convert list to set by creating set and adding all elements from list to set
    Set<Integer> si = new Set<Integer>();
    si.addAll(li); // we can add elements from another list or set/
    system.debug('si integer-->' + si); 
   
List<Integer> newLi = new List<Integer>();
newLi.addAll(si); // we can add elements from another list or set
system.debug('deduplicated list ;' + newLi);
}
//we create set<string> and we will convert each element t uppercase and stroe in another set

public static void upperCaseSet(){

    set <string> cities = new Set<String>();
    cities.add('Tokyo');
    cities.add('Lisbon');
    cities.add('Berlin');
    cities.add('Lisbon');
    cities.add('Tokyo');
    cities.add('Nairobi');
    cities.add('NAIROBI');
    cities.add('TOKYO');
    system.debug('cities===>' + cities);

    //creta a new set, and add all the cities in capital
    set<string> citiesInCaps = new Set<String>();
    for (String eachCity : cities ) {
        string temp = eachCity.toUpperCase();
       //cities.add(temp) this is not valid, we need to use new variable name. 
        citiesInCaps.add(temp);
        
    }
        system.debug('cities in caps: '  + citiesInCaps); 



            
        }


}


