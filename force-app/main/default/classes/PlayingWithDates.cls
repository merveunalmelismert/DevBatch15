    public class PlayingWithDates {
   public void printDateOutput (){
    date today = date.today();
    system.debug('today is' + today);

    date future = date.newInstance(2789, 10, 5);
    system.debug('future is' + future);

    date pastTime = date.newInstance(1459, 3, 4);
    system.debug('past time is' + pastTime);

    integer dayInt = 15;
    integer monthInt = 1;
    integer yearInt = 2001;

    date yeni = date.newInstance( yearInt,monthInt,dayInt);
    system.debug(yeni);


    date newDate = date.newInstance(yearInt,monthInt,dayInt);
    system.debug(newDate);
   }

   


public string getMonthNAme(date tarihParam){
    string monthName;
    integer myMonth = tarihParam.month()

   
   
   
    if(myMonth== 1){
        monthName='January';
      }else if(myMonth==2){
          monthName='February';
      }else if(myMonth==3){
          monthName='March';
      }else if(myMonth==4){
          monthName='April';
      } else{
          system.debug('invalid value');
      }
      system.debug (monthName);
      return monthName;
  }
   

}




