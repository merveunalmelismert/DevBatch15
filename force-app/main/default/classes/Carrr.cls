public class Carrr {
    //variables created directly inside class 
    //body are called Class Variables
   private string carNumber;
    public string name;
    public integer mfgYear;
    public string color;
    decimal price;
   
    //class variables are accessible in all methods of the class.

    public void details(){
        system.debug('car number is ' + carNumber);
        system.debug('car name is ' + name);
        system.debug('manufacturing year ' + mfgYear);
        system.debug('color of carrr is ' + color);
        system.debug('price is ' + price);
        printCarAge();
    }

    //constructor is same as class name
    //constructor does not return anything
    //constructor which has NO parameters are calledvparameterLESS constructor.
    public carrr(){
        //consturctor code is called automatially when new instance is created

        //constructors are used a lot to assign class variables values by default.
        //constructors are also used to do some operation as soon as object is created.
        
        mfgYear = 2023;
        system.debug('new car is created, consturctor called automatically');
    }
    public Carrr(string nm){
        // nm is parameter
        //name is class variable
        // i am assigning name to nm
        
        name = nm;
        mfgYear =2023;

    }
    public Carrr(string nm, string carnum, string clr, integer yr, decimal pc){
        name= nm;
        carNumber = carnum;
        color = clr;
        mfgYear = yr;
    }
    //access modifier is optional, by default==> private.
    private void printCarAge(){
        integer currentyear = date.today().year();
        system.debug('car age is' + (currentyear - mfgYear));
    }
}