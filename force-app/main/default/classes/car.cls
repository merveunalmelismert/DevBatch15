
public class CollectionsAssignment {
    public static void listMethods(list<string> dayList){
        system.debug('Daylist--->' + dayList);
        dayList.add('Sunday');
        system.debug('adding sunday 1 0 index--->' + dayList);
        List<String> remainingDaysList = new list<String>();
        remainingDaysList.add('Friday');
        remainingDaysList.add('Saturday');
        dayList.addAll(remainingDaysList);
        system.debug('Adding remainingDaysList' + dayList);
        system.debug('List contains Sunday' + dayList.contains('Sunday'));
        system.debug('List contains SalesforceDay--->' +daylist.contains('SalesforceDay'));
        system.debug('value at 0 index' + dayList.get(0));
        system.debug('value at 5 index' +dayList.get(5));
        system.debug('is the list empty' + dayList.isEmpty());
        system.debug('remove element from 0 index' + dayList.remove(0));
        system.debug('list after removing element' +dayList);
        dayList.add('SalesforceDay');
        

        
       
    }
}
