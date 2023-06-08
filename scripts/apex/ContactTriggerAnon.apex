List<Contact> l = new List<Contact>();

Contact c = new Contact();
c.LastName = 'cnt trigger 3';
l.add(c);

contact c1 = new Contact();
c1.LastName = 'cnt trigger 4';
l.add(c1);

insert l; 
// each dml fires trigger one time.each dml leads to one trigger execution