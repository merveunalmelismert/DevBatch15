Employeee e1 = new Employeee('Jonny' , 6000);
system.debug('salary above min?' + e1.isSalaryAvoveMin());


Employeee.minSalary = 6200;
system.debug('salary above min?' + e1.isSalaryAvoveMin());

Employeee.setMinSalary(5500);