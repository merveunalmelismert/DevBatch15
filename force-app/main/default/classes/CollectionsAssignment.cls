public class CollectionsAssignment {
    public static void listMethods(list<string> dayLists){
        system.debug('Daylist--->' + dayLists);
        dayLists.add('Sunday');
        system.debug('adding sunday 1 0 index--->' + dayLists);
        List<String> remainingDaysList = new List<String>();
        remainingDaysList.add('Friday');
        remainingDaysList.add('Saturday');
        dayLists.addAll(remainingDaysList);
        system.debug('Adding remainingDaysList' + dayLists);
        system.debug('List contains Sunday' + dayLists.contains('Sunday'));
        system.debug('List contains SalesforceDay--->' + dayLists.contains('SalesforceDay'));
        system.debug('value at 0 index' + dayLists.get(0));
        system.debug('value at 5 index' +dayLists.get(5));
        system.debug('is the list empty' + dayLists.isEmpty());
        system.debug('remove element from 0 index' + dayLists.remove(0));
        system.debug('list after removing element' +dayLists);
        dayLists.add('SalesforceDay');
        dayLists.set(0,'Sunday');
        system.debug('Replacing SalesforceDay with Sunday at 0 index' + dayLists);
        system.debug( 'size of the list is ' + dayLists.size());
        dayLists.sort();
        system.debug('list after sort ' + dayLists);
        system.debug('string value of list--->' +dayLists.toString());
       
    }

    public static void SetMethods(){
        Set<String> newSet = new Set<String>{'Sunday','Monday','Tuesday','Wednesday'};
        system.debug('this is my set' +  newSet);    
        newSet.add('Thursday');
        Set<String> newSet2 = new Set<String>{'Friday','Saturday'};
        system.debug('all of the days  ' + newSet2);
        newSet.contains('Sunday');
        integer sizee = newSet.size();
        system.debug(newSet);
        newSet.clear();
        newSet.isEmpty();

            
        }
        
        
    }


