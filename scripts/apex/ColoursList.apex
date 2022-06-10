List<string>  colourNames= new List<string>();
colourNames.add('red');
colourNames.add('blue');
colourNames.add('black');
colourNames.add('white');
colourNames.add('yellow');
colourNames.add('brown');
colourNames.add('orange');
colourNames.add(4, 'armut');
system.debug('***solution1***');
system.debug(colourNames); 
system.debug('***solution 2***');
integer size = colourNames.size();
system.debug('color size  '+ colourNames.size());
system.debug('*****solution3***');
Boolean isContains=colourNames.contains('red');
system.debug('Is contains red='  +isContains);

system.debug('****solution 4***');
integer theLastElementIndexNum= colourNames.size()-1; 
//string theLastElementName=colourNames[theLastElementIndexNum].toUpperCase();
system.debug( colourNames.get(theLastElementIndexNum).toUpperCase());
//system.debug(theLastElementName);
//system.debug(theLastElementName.toUpperCase());




//solution 4 _ 2.yol// get the last element
 system.debug(colourNames.get(colourNames.size()-1));







system.debug('****solution 5****');
system.debug(colourNames[4].toUpperCase());

system.debug('****solution   6 and 7 ****');

List<string> colourCodesList = new List<string> { 'R0000','W3445','B123','Y234','T2349','T566','Y7878'};
system.debug('is equal   '+  colourCodesList.equals(colourNames));

//integer codessize=colourCodesList.size();
//integer colorssize=colourNames.size();
//system.debug(codessize.equals(colorssize));

system.debug('*****   solution 8 ****');
List<string> myNewList = new List<string>();
myNewList.addAll(colourCodesList);
myNewList.addAll(colourNames);
system.debug(myNewList);

//add(element)
//add(index, list elemet)(4,'armut')
//addAll(),list ekliyor






