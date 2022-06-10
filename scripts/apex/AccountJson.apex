/*Print the JSON format of any 5 accounts from the Salesforce org. Fetch Id, Name, AnnualRevenue and Type field from Account.*/
List<account> accList=[Select id,name,annualRevenue,type  from account limit 5];
string accountJSON1=JSON.serialize(accList);
system.debug(accList);
system.debug(accountJSON1);

/*Print the JSON format of account and its related contacts for 'United Oil & Gas Corp.' account from the Salesforce org. Fetch Id, Name, AnnualRevenue and Type field from Account Object And Fetch Id, First Name and Last Name from the related contacts.*/

List<account> listOFAccount=[select id,name,annualRevenue,type ,(select id, firstName,lastName from contacts ) from Account 
                                      where name='United Oil & Gas Corp.'];
                                      system.debug(listOFAccount);
                                    
string accountJSON2=JSON.serialize(listOFAccount);
system.debug(accountJSON2); 

/*Print the JSON format of account and its related opportunities for 'United Oil & Gas Corp.' account from the Salesforce org. Fetch Id, Name, AnnualRevenue and Type field from Account Object And Fetch Id, StageName and Amount from the related Opportunities.*/

List<account> AccWithOpps=[select id,name,annualRevenue, type,
                          ( SELECT id,stageName,amount from opportunities) 
                            from Account where name='United Oil & Gas Corp.'];

  system.debug(JSON.serializePretty(AccWithOpps)) ;  



string accountJSON3=JSON.serialize(AccWithOpps);
system.debug(accountJSON3); 
//JSON.serializePretty()

