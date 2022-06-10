
public class OpportunityWithTask implements Database.Batchable<SObject>, Database.stateful{
    integer count=0;
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator oppList = database.getQueryLocator([select id,name, lastmodifieddate from opportunity 
                                               where stagename != 'Closed Lost' and stagename != 'Closed Won' and 
                                               lastmodifieddate < LAST_n_DAYS:7 ]);
            
        system.debug(oppList);
        return oppList;
    }

    public void execute(Database.BatchableContext bc, List<opportunity> scope){
        List<task> taskList=new List<task>();
        for(opportunity eachOpp: scope ){
            task ts=new task();
            ts.whatId=eachOpp.id;
            ts.Subject='Other';
            ts.Description=system.label.TaskDescription;
            ts.OwnerId=eachOpp.ownerId;
            ts.status='In Progress';
            if(eachOpp.CloseDate<date.today()){
                ts.ActivityDate=Date.today();
            }else{
                ts.ActivityDate=eachOpp.CloseDate.addDays(-2);
                
            }
            taskList.add(ts);
        }
        if(!taskList.isEmpty())
            insert taskList;
            count++;
        
     
    }
    public void finish(Database.BatchableContext bc){
      system.debug('Total created task '+ count) ;
}
}