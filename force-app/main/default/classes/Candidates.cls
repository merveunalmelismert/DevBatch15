public  class Candidates {
    public string name;
    public string gender;
    public static string companyName;

    public void details(){
        system.debug('name is' + name );
        system.debug('company name is' + companyName);
        system.debug('gender is ' + gender);
        system.debug('----');

    }

}