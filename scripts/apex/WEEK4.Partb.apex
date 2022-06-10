Map< string ,integer> map1=new map<string ,integer>();
map1.put('s',234);
map1.put('k',134);
map1.put('l',634);
map1.put('m',274);
map1.put('p',94);
system.debug(map1);

//set<string> setformap=new set<string>();

set<string> setformap=map1.keySet();
system.debug(setformap);
List <integer> listA= new List<integer>();
List <integer> listB= new List<integer>();
List<integer> listformap=map1.values();
system.debug(listformap);
 for (integer eachKey:listformap) {
     listformap.get(eachKey)>0
  
 }
   system.debug(listA);
   system.debug(listB);