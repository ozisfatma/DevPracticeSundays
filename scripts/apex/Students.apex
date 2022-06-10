Students st1=new Students();
st1.firstName='ALI';
st1.lastName='TAN';
st1.major='MUSIC';
st1.classYear=2023;
system.debug(st1);
string returnedmajor=st1.generateReport();
system.debug('returned major is   '+returnedmajor);

