List<Lead> leadlist = new List<Lead>();

for (Integer i = 0; i < 5; i++) {

    lead l = new lead();
    l.LastName = 'lead trigger name ' +i;
    l.Company = 'lead trigger company '  + i;
    l.Status = 'Open -  Not Conacted';
    leadlist.add(l);
    
}
insert leadlist;

for (lead eachlead : leadlist) {
    eachlead.Description = 'desription updated from Anonymous';

    
}

update leadlist;