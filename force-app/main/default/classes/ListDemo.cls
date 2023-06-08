public class ListDemo {
public static void candidatesList(){
    
 List<string> listC = new List<String>();
    system.debug(listC);  

    listC.add('Marc');
    listC.add('Bill');
    listC.add('Kunal');
    listC.add('Marc');
    system.debug(listC);
}

public static void randomIntegerList(){
    List<integer> intList = new List<Integer>();
    intList.add(90);//0
    intList.add(15);//1
    intList.add(77);//2
    intList.add(21);//3
    intList.add(15);//4
    intList.add(15);//5
    system.debug('Int List==>' + intList);

    integer size = intList.size();
    system.debug('size of list is ' + size);

    integer int3 = intList.get(3);
    //OR
    Integer int31 = intList.get(3);
    system.debug('int3 is ' + int3);
    system.debug('int31 is ' + int31);

}
public static string candidatesList(integer i){

    List<String> listC = new list <string>();
    system.debug(listC);

    listc.add('Marc');
    listC.add('Bill');
    listC.add('Kunal');
    listC.add('Marc');
    system.debug('list of candidates ==> ' + listC);

    string returnValue = listC.get(i);    
    return returnValue;

}

public static void printAnimalsList(){
    List<String> animals = new List<String>();
    animals.add('dog');
    animals.add('cat');
    animals.add('horse');
    animals.add('monkey');
    animals.add('tiger');
    animals.add('lion');
    animals.add('lion');

    system.debug('animals'  + animals);
    System.debug('number of animals: ' + animals.size());
    systen.debug('number of animals': + numOfAnimals);
    


}

}