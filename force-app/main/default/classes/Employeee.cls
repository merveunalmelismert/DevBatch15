public class Employeee {
    string name;
    Decimal salary;
    public static decimal minSalary = 5000;
    

public Employeee(string name, decimal salary){
    this.name = name;
    this.salary = salary;
}
//this is non static
public Boolean isSalaryAvoveMin(){
    // we are using static variable inside non static method.
    Boolean check = (salary> minSalary);
    return check;
}
public void setMinSalary(decimal amount){
    minSalary = amount;
    system.debug('name =>' + name);
}


    
}