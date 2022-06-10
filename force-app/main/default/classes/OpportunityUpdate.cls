public class OpportunityUpdate implements Database.Batchable<sObject>{

    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator oppList = database.getQueryLocator([select id, name from opportunity where stageName='Closed Lost']);
        system.debug(oppList);
        return oppList;
    }
    public void execute(Database.BatchableContext bc, List<opportunity> scope){
        if(scope.size()>0){
        delete scope;
        }
    
              
    }
    public void finish(Database.BatchableContext bc){
      
    }
}
