//MapDemo.mapStringInteger();


//map of string, string

map<string, string> mapCC = new map<string, string>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Portugal', 'Euro');
mapCC.put('India' , 'Rupees');
mapCC.put('India' ,'Rupee');
mapCC.put('Turkiye', 'Lira');
mapCC.put('El Salvador' ,'Bitcoin');
system.debug(mapCC);

//get value from map using KEY> methos is .get(key)

string currUSA = mapCC.get ('USA');
String currIndia = mapCC.get('India');

system.debug(currIndia);

String country ='Turkiye';
string curr = mapCC.get(country);
system.debug(country + 'currency is' + curr);

Set<String> allCountry = mapCC.keySet();
system.debug('all countries ' + allCountry);

//get all the currencies from map

list<string> allCurrencies = mapCC.values();
system.debug('all currencies ' + allCurrencies);

Set<String> allCountries = mapCC.keySet();

for(string eachCountry : allCountries) {
    system.debug('country is ' + eachCountry);
    String eachCurrency = mapCC.get(eachCountry);
    system.debug('currency is  ' + eachCountry);
    system.debug('country is  ' + eachCountry  + 'currency is  ' + eachCurrency);


}
