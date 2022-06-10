//Assignment 1
string str1= 'Welcome to the Salesforce world, apex is host in this world.';
Boolean isContains=str1.contains('Host');
system.debug(isContains);

//Assignmet 2
string s1='My favourite part is apex';
string s2='MY FAVOURITE PART IS APEX';
Boolean isEqual=s1.equals(s2);
system.debug('Are they equal=>' +isEqual);
//Assignment3
date dateOfJoin=Date.newInstance(2015,1,5);
date todaysDate=Date.today();
integer experienceByMont=dateOfJoin.monthsBetween(todaysDate);
integer experienceByYear=experienceByMont/12;
system.debug(experienceByYear);







