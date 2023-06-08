public class StudentMarksheet {
     string firstName;
     string lastName;
     integer mathematics;
     integer english;
     integer chemistry;
     public static string schoolName;

public StudentMarksheet(){
    schoolName = 'Salesforce Public School';
}
public void setName(string firstName){
         this.firstName = firstName;
    }
    public string getName(){
         return this.firstName;
    }    
public void setlastname(String lastName){
    this.lastName =lastName;
}    
public string getlastName(){
         return this.lastName;
    }
    public string getStudentFullName (){
        return this.firstName + this.lastName;
    }


    public void setMarks(integer mathematics1, Integer english1, Integer chemistry1){
        mathematics = mathematics1;
        english = english1;
        chemistry = chemistry1;
    }
    public void showMarketsheet(){
        system.debug('Student name is ' + this.firstName + ' ' +this.lastName);
        system.debug('Student school is ' +  schoolName);
        system.debug('Mathematics ' + this.mathematics);
        system.debug('English' + this.english);
        system.debug('Chemistry' + this.chemistry);


    Integer sum = chemistry+english+mathematics;
        if (sum>= 120){
             system.debug('You are passed');
                }else{
             system.debug('You need to study more');
}
}
}