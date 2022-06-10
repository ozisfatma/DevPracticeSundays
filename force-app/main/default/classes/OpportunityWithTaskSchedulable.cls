public with sharing class OpportunityWithTaskSchedulable implements Schedulable{
    public void execute(SchedulableContext sc){
       
        OpportunityWithTask  obj=new OpportunityWithTask ();
        database.executeBatch(obj);
     
    }
    
}
