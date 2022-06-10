/*
1. Create a set of strings named as uniqueNameSet with “Tom” and “Jerry” as the default values in it.
2. Print the size of the above created Set.
3. Add new elements in the uniqueNameSet.
4. Check if uniqueNameSet contains your name?
5. Check if the uniqueNameSet is Empty.
6. Clear the set and print it.
7. Now check if the set is empty or not.
8. Is it possible to get an element from a set with the help of an index? If Yes, then please write the
code for the same and If No, then why is it not possible
9. List down at the differences between set and list.*/

set<string> uniqueNames= new set<string>{ 'Tom'.'Jerry'};
system.debug('Size of the set => '+ uniqueNames.size());
uniqueNames.add('Fatma');
system.debug('Is contains my name=>'+ uniqueNames.contains('Fatma'));
system.debug('is unique=> '+ uniqueNames.isEmpty());
system.debug( 'clear set=>'+ uniqueNames.clear());
system.debug('is set empty=>'+ uniqueNames.isEmpty());

