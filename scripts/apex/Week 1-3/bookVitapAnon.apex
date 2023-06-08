BookVitap b1 = new BookVitap('The Great Gatsby', 'Scot', 10.50);
b1.printDetails();

decimal p1 = b1.getPrice();
system.debug(p1);

b1.setPrice(14.25);
b1.printDetails();


BookVitap b2 = new BookVitap('Harry potter', 'Rowling', 25.50);
b2.printDetails();
b2.setPrice(30.99);
b2.printDetails();


BookVitap b3 = new BookVitap('Harry potter', 'Rowling', 30.99);


