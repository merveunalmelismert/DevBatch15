public class PlayingWithDatesAgain {
    public static void printDateOutput(){
       date today = date.today();
       system.debug(today);




       date future = date.newInstance(2073, 5, 21);
       system.debug(future);
        date pastTime = date.newInstance(1549, 5, 23);
        system.debug(pastTime);

        integer dayInt = 15;
        Integer monthInt = 1;
        integer yearInt = 2001;

        date yeni = date.newInstance(dayInt, monthInt, yearInt);
        system.debug(yeni);

        date newDate = date.newInstance(dayInt, monthInt, yearInt);
        system.debug(newDate);

    }

    public static String getMonthName(date dateParam){
        string monthNAme ='';
        integer mymonth = dateParam.month()
        if (month==1) {
            monthNAme = 'January';
            
        }else if (month == 2){
        monthNAme = 'February';
        }else if (month == 3){
            monthNAme = 'March';
        }else if (month == 4){
            monthNAme = 'April';
        }

        return monthNAme;

        }
            
        }




        
    



