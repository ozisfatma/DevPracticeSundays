trigger AccountTrigger on Account(before update) {
    if(trigger.isBefore && trigger.isUpdate){
        AccountHandlerInfoNew.accountAnnualRevenue(trigger.new, trigger.oldmap);
    }
}