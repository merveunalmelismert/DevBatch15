public class MapDemoAgain {
    public static void printMap1() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');
        system.debug(map1);
        
        //get value from key
        //CANNOT get KEY from VALUE
        integer rollNo = 1011;
        string studentName = map1.get(rollNo);
        system.debug('student name for 1011 is ' + studentName);


        integer rollNo2 = 1055;
        //print student name if rollNo2 is present, else print
        //map1.containsKey(rollNo2) -> true or false. IT does not return the value
        if (map1.containsKey(rollNo2)) {
            system.debug(rollNo2 + ' student name is ' + map1.get(rollNo2));
        } else {
            system.debug('No such roll no is present in our student records');
        }
    }
    public static void printMap2() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');
        system.debug(map1);

        //to get all the keys we use KEYSET method
        set<integer> allRollNo = map1.keySet(); //this will ALWAYS all keys as set<key_datatype>
        system.debug('number of roll numers? ' + allRollNo.size());
        system.debug('all roll no: ' + allRollNo);

        //to get all the VALUES we use values() method
        //list<value_datatype> -> returned from values() method of MAP
        list<string> allStudent = map1.values();//number of elements will be same as keyset()
        system.debug('all students are ' + allStudent);


    map<integer,String> m2 = new Map<Integer,String>();
    m2.putall(map1);
    system.debug(m2);
    }
    public static void printMap3 (){
        map<integer,String> map1 = new map<integer,string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');
        system.debug(map1);


        //1.print 
        //roll number is 1011, student is 'Amar'
        //THERE NO FOR EACH LOPP FOR MAP!!!!!
        //WE HAVE FOR EACH FOR LIST AND SET
        //1ST STEP IS GET ALL THE KEYS
        set<integer> allKeys = map1.keySet();
        for (integer eachKey : allKeys) {
            string sn = map1.get(eachKey); // student name
            system.debug('roll no is '  + eachKey + 'student name is '  +sn);

            
        }
        // all student names --> concate with ||
        //alex || Amar || Monica

        string finalStrin ='';
        for (integer rollNo : allKeys) {
            string studentName = map1.get(rollNo); //Student name
            system.debug('roll no is ', rollNo + 'student name is ' + studentName);

            finalStrin += studentName + '|| ';
            system.debug('final string ' + finalStrin.removeEnd(' || '));
            
        }
        
            
        }
        public static void printMap4(){
            map<string, List<String>> m9 = new map<string,list<string>>();
            //key is department name (string)
            //value is all the mmebers of that department (list<string>)

            List<String> itTeam = new List<String>{'Brian', 'Decker'};
            List<String> salesTeam = new List<String>{'John', 'Jane'};
            List<String> serviceTeam = new List<String>{'Monica', 'Alex'};

            m9.put('IT', itTeam);
            m9.put('Sales', salesTeam);
            m9.put('Service', serviceTeam);

            system.debug(m9);



        }
    }





    // NOTE==>key uzerinden value yu cagrabiliyoruz fakat value uzerinden key i cagramiyoruz.

