trigger PaymentTrigger on Payment__c (after insert,after update,after delete,after undelete) {
    if(isAfter){
        if(isInsert){
        
        }
        if(isUpdate){

        }
        if(isDelete){

        }
        if(isUndelete){

        }
    }

}