

trigger OpportunityTrigger on opportunity (before insert,before update) {
    if(trigger.isbefore && trigger.isInsert){
        
        OpportunityTriggerHandler.createOpportunity(trigger.new);
    } 
    if(trigger.isBefore && trigger.isUpdate){
        OpportunityTriggerHandler.oldAndnewAmountandClosedate(trigger.new, trigger.oldmap);
        OpportunityTriggerHandler.printdescription(trigger.new, trigger.oldmap);
    }
  
}  