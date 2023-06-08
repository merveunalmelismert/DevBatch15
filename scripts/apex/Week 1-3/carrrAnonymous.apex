carrr bmw = new carrr(); // new object or instance of a class.
bmw.details();
system.debug('------');
carrr ford = new carrr();
ford.details();

Carrr bmw = new Carrr('BMW X3');
bmw.details();

Carrr ford = new Carrr();
ford.details();

Carrr bmw2 = new Carrr('BMW X3', 'ABC10001', 'Black',2020,45000 );
String carname2 = bmw2.name;
String carnumber2 =  bmw2.carNumber;

bmw2.details();



carrr ford2 = new carrr('Ford mustang', 'abc1002', 'Red',2023, 550000.50);//will this work?
string ford2Name = ford2.name;
string ford2color = ford2.color;
system.debug('ford 2 name and color are ' + ford2Name + ', ' + ford2color);
system.debug('------------');
//can we update the value of variable?
ford2.name = 'Ford Focus';
ford2.color = 'Silver';
ford2.details();