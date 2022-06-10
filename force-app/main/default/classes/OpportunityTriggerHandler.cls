/* 1. When an opportunity is created show a debug message ([OpportunityName] – [CloseDate] – [Amount]) for each opportunity and print the total number of opportunities created in the transaction. For example: Demo Opportunity – 20/10/2022 – 40000.
2. Print the Old and New Amount field values in one line. Old and New Close Date field values in another line for opportunity when opportunities are updated.
3. When the StageName of an opportunity is updated, then print the value of description field and opportunity name.*/

public with sharing class OpportunityTriggerHandler {
   
    public static void  createOpportunity(List<Opportunity> triggernew) {
        
        for(opportunity eachOpp:triggernew){
            
    system.debug('An opportunity is created successfully.Opporutunity name-'
    + eachOpp.name +' closed date -' + eachOpp.closeDate+ 'Amount -'+ eachOpp.amount);

    }
    system.debug('Total number of created opportunity= '
    + triggernew.size());
    }
    public static void  oldAndnewAmountandClosedate(List<Opportunity> triggernew, Map<Id,Opportunity> triggeroldmap){
        for(opportunity eachOpp: triggernew){
            system.debug('new amount '+eachOpp.amount +'old amount '+ triggeroldmap.get(eachOpp.id).amount);
            system.debug('new close date '+eachOpp.closeDate +'old close date '+ triggeroldmap.get(eachOpp.id).closeDate);
        }
    }
    public static void printdescription(List<Opportunity> triggernew, Map<id, opportunity> triggeroldmap){
        for (opportunity eachOpp: triggernew) {
            if(eachOpp.stagename!= triggeroldmap.get(eachOpp.Id).stagename){

                //eachOpp.description=eachOpp.name;
                system.debug('description = '+ eachOpp.name);
            }
            
            
        }

    }
    /*. Make sure user is not able to change the status of an opportunity once opportunity is updated to closed won or closed lost.
     */
    public static void opportunityCanNotchangeFromClosedWonandClosedLost(List<opportunity> triggernew,
                                                                         )
}