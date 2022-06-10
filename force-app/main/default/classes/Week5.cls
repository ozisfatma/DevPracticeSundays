public class Week5 {
    //1.yol
    // Prepare a method which returns the sum of all the closed won opportunities Amount present in the org.

    public static  decimal sumAllClosedWonOpp() {
        List<opportunity> closedwons=[select name ,id ,amount from opportunity where stageName='Closed Won' ];
        decimal total=0;
        for(opportunity eachOpp : closedwons){
            total+=eachOpp.amount;
        }

        system.debug(total);
        return total;
    //2.yol
    }
public static list<aggregateResult> aggOppSumAll(){
    List<AggregateResult> closedWons2=[select sum(amount) from  opportunity where  stageName ='Closed Won'];
    system.debug(closedWons2);
    return closedWons2;
}
//2 Prepare a method which will===== return all the Accounts==== for which at least a closed Won Opportunity is present. Make it dynamic if we want to bring account for other opportunity stageNames.

public static List<account> accWithClossedWonOpp(string stg){
    
    List<account> AccountWithClosedWonOpp=[Select name, id from account where id in(select accountId from Opportunity where stageName =:stg)];
    system.debug('My list is' + AccountWithClosedWonOpp);
    return AccountWithClosedWonOpp;
    
     }
 //   3- 3. Prepare a method which will return all the Accounts for which at   least a contact is present., //child a girmeden yaptik, childi gormek stersek for loop yapabiliriz.
 public static List<account> contPresent(){
     List<Account> accountWithContact=[select name,id from Account where id in(select accountId from contact)];
     system.debug(accountWithContact);
     return accountWithContact;
 }

}