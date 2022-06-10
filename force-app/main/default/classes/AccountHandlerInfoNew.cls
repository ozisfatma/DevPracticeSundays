

public class AccountHandlerInfoNew {
    public static void accountAnnualRevenue(List<account> triggernew, Map<id,account> triggeroldmap){
        for(account acc: triggernew){
            if(acc.annualRevenue< triggeroldmap.get(acc.id).annualRevenue){
                acc.annualRevenue.addError('new value can no be lower than old value');
                
            }
        }
    
    }

}