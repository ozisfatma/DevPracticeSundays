/* 
1. Create a Map named zipCodeToCityMap which should contain the Zipcode to City Name mapping. Like below:
a. 100101 => New Delhi
b. 101234 => Mumbai
c. 569023 => New York City
2. Add multiple mappings of your choice in the zipCodeToCityMap Map.
3. Check if the above map contains mapping for 204101.
4. Print all the Zip Codes present in the zipCodeToCityMap.
5. Print all the city names present in the zipCodeToCityMap.
6. Print the number of mappings present in the zipCodeToCityMap.
7. Create a set as uniqueZipCodeSet and populate it with all the Zip codes from zipCodeToCityMap.
8. Create a List as cityNameList and populate it with all the city names from zipCodeToCityMap.
9. Check if the zipCodeToCityMap is Empty.
10. List down the differences between list and Map*/
map< string, string> zipCodeToCityMap =new map< string, string>();
zipCodeToCityMap.put('1001','New Delhi');
zipCodeToCityMap.put('1002','Mumbai');
zipCodeToCityMap.put('1229','New York City');
Boolean iscontains=zipCodeToCityMap.containsKey('1001');
system.debug('The map contains 1001=>'+ iscontains);

//4
set<string> zipCodeFromTheList=zipCodeToCityMap.keySet();
system.debug(zipCodeFromTheList);
//5
list<string>  cityNamesFromMap =zipCodeToCityMap.values();
system.debug(cityNamesFromMap);
//5
system.debug(cityNamesFromMap.size());
set<string> uniqueZipCodeSet= new set<string>();
uniqueZipCodeSet.addAll(zipCodeFromTheList);
system.debug(uniqueZipCodeSet);
