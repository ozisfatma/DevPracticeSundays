public class week5Part3 {

/*1. Take account Id as input parameter and create a new contact for the provided account’s Id. Populate Contact last name as same as Account’s Name.*/
//1-account Ac
//2-icine parametre koy:
public static void cretaeAnewContact(string accountId){
    account acc1 = [select id, name from account where id=: accountId];
    contact con1=new contact();
    con1.lastName=acc1.name;
    con1.AccountId=acc1.id;
    system.debug(con1);
insert con1;
}
//. Update the description field of top 10 opportunities as "This is one of the top 10 opportunity. Please work on this properly “.
public static void opptop10(){
   list<opportunity> top10ExR= [select  ExpectedRevenue from opportunity order by ExpectedRevenue desc limit 10 ];
   for(opportunity eachOpp: top10ExR){
       
       eachOpp.description='This is one of the top 10 opportunity. Please work on this properly ';
       

   }
   update top10ExR;
   system.debug(top10ExR);
}
}

