public with sharing class PaymentTriggerHandler {
    public static void insertNumberOfOnlinePayment(List<Payment__c>triggernew) {
       //a new online payment is added
       Set<id> IdOfOnlinePayment= new Set<id>();
       for(Payment__c p: triggernew){
           if(p.Cash_Online__c=='Online'){
               insertNumberOfOnlinePayment.add(p.Customer__c);
               if(!IdOfOnlinePayment.isEmpty()){
                   insert IdOfOnlinePayment;
               }
               
           }
           
           
       }
    }
    public static void updateNumberOfOnlinePayment(){
     for (Payment__c pUp: triggerNew)
    }
}
