list <Contact> conList = new List <Contact>(); 
conList = [SELECT AccountId, FirstName, LastName, Email FROM Contact];
system.debug(conList);