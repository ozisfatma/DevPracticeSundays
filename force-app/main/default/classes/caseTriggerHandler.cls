/*Whenever a case is created with origin as email then set status as new and Priority as Medium
 */
public with sharing class caseTriggerHandler {
    public static void createCaseoOrigin(List<case> triggernew) {
        for(case c:triggernew){
            if(c.origin=='Email'){
                c.status='new';
                c.Priority='Medium';
            }
        }

    }
}
