public with sharing class Bicyle {
  integer gear;
  integer speed;

  oublic Bicyle(Integer gear, integer speed){
    this.gear= gear;
    this.speed=speed;
  }

  public void speedUp(){
    this.speed++;
  }

  public void changeGear(integer newValue){
    this.gear = newValue;

  }

  public void printState(){
    system.debug('speed of bike is ' + this.speed + 'gear is '  + this.gear);
  }

  public static void calculateDistance( integer t, integer speed){
    return t*speed;
  }

  public static string getRating(string material){
    string rating ='';
    if(material = 'Carbon') {
        rating ='A';

    }else{
        rating =' D';
    }
    return rating;

  }
}