/*Create a class named as AccConAndOppOperations and Write methods for each of the following
requirements:
1. Write the logic to fetch and return all the accounts. Include account name, annual revenue, type, and source of account.
2. Find all the opportunities which has Lead Source as 'Web' and Stage as 'Closed Lost'. Make it dynamic so that it works for other stages and Lead sources as well.
3. Print the Annual revenue and name of all the accounts of type 'Customer - Direct' and print the Opportunity Name and Amount for the related 'Closed Won' opportunities. Each opportunity record should be printed in different line.
4. Write a method which should return the account record after creating it. Take Name, Annual Revenue, Type as input parameters and populate the values in account record. If Name is not provided, then do not create the account and show a message like Account without name cannot be created.*/
public class AssignmentWeek4 {
    public  static List<account> fetchAllAccounts(){
    List<Account> listAcc =[Select name, annualRevenue, type, accountSource from Account];
    system.debug(listAcc);//
    return listAcc;
    }
    public static void fetchOpportunity( string  src, string  stg  ){
    
    List<opportunity> oppList= [select name from opportunity where leadSource =:src and stageName=: stg]; 
    system.debug(oppList);
    system.debug('Lead Source  '+ src + 'stage Name'+ stg);
    }
 /* Print the Annual revenue and name of all the accounts of type 'Customer - Direct' and print the Opportunity Name and Amount for the related 'Closed Won' opportunities. Each opportunity record should be printed in different line.
 
 
  */

 /*
 4. Write a method which should return the account record after creating it. Take Name, Annual Revenue, Type as input parameters and populate the values in account record. If Name is not provided, then do not create the account and show a message like Account without name cannot be created.*/
 public static void accountRecordCreate( string nm, decimal annualRev, string typ){
   account acc1= new account();//create a new account
    acc1.name=nm;
    acc1.AnnualRevenue=annualRev;
    acc1.Type=typ;

        if(nm==''){
         system.debug('Account without name cannot be created');
        } else{
         system.debug('A new account has been created successfully');
         system.debug(acc1);
        }
    insert acc1;//deploy et yoksa gozukmuyor

    }

}
