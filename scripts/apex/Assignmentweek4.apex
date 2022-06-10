AssignmentWeek4.fetchAllAccounts();


AssignmentWeek4.fetchOpportunity('Web', 'Closed Lost');


/* Print the Annual revenue and name of all the accounts of type 'Customer - Direct' and print the Opportunity Name and Amount for the related 'Closed Won' opportunities. Each opportunity record should be printed in different line.
 */

List<Account> accList=  [select  name, annualRevenue ,(select name , amount from Opportunities where stageName='Closed Won') From Account where type='Customer - Direct'];
 system.debug('My record is= '+accList);
for(account eachAcc: accList){
    string accName=eachAcc.name;//her bir liste icine gir 1 name i getir
    decimal accAnnualRevenue=eachAcc.annualRevenue;
    //string ...............=eachAcc.oppoirtunities//yapamiyorum cunki   //list bu
    system.debug('Account Name= '+ accName +'  Annual Avenue = ' + accAnnualRevenue);
    for(opportunity eachOpp: eachAcc.opportunities){//her bir liste icinde birsuru opp var. onlari tek tek getirt ve yaz.
    string oppName=eachOpp.name;
    decimal oppAmount=eachOpp.amount;
    system.debug(oppName);
    system.debug(oppAmount);

    }
}

AssignmentWeek4.accountRecordCreate('Hayali Account', 220000, 'Other');
AssignmentWeek4.accountRecordCreate('', 220000, 'Other');