
/*Please note every method should have an input parameter of type List. If the provided list is empty, then show a message like “Please provide values to do the operation” and return null otherwise return the calculated value.*/
public class OperationHelper {
    public static  decimal sum(list<decimal> listB) {//methodwithlist p
       decimal resultsum;
       if(listb.size()>0){
           resultsum=0;
           for(decimal eachNum:listB){
               resultsum+=eachNum;       
           }
        }
        else{
            
            system.debug(resultsum +'====>please provide values to do the operation');
        }
        return  resultSum;
    }

   
    public  static decimal  average(list<decimal> listB){
        decimal avrResult;
        if(listB.size()>0){
           avrResult=0;
           avrResult=sum(listB)/listB.size();
            
        }
        else{
            system.debug( avrResult + '==>The avg is null, please provide a value');  
        }
        return avrResult;
        
    
    }
    
   public static   decimal highest1(list<decimal> listB){
       
        decimal high;
            if(listB.size()>0){
                listB.sort();
                system.debug(listB);
                high=listB[listB.size()-1];
                system.debug('highest value => '+ high);
                

            }else{
                
                system.debug('No value in the list');
                
            }
            return high;
  }    
      
    public static  decimal highest2( list<decimal> listB) {
        decimal highestElement;
        if(listB.size()>0){
            highestElement=listB[0];
            for (decimal eachNum : listB) {
                if(eachNum>highestElement){
                   eachNum=highestElement;
            // 7,9,13,50  ilk 9 u sectim. 
            //7 ile 9  karsilastir. 9 buyuk 
            //9  ile 9 u karsilatir.9
            //13 ile 9 u karsilastir. 13
            //50 ile 13 u karsilastir. 50 atandi.
            
            
                }
            } 

        }else{
                system.debug('No value in the list- method2');
            }
            return highestElement;


    }
          
    
    public static  decimal lowest1(list<decimal> listB){
        decimal lowestNum;
        if(listB.size()>0){
            listB.sort();
            lowestNum=listB.get(0);
        
        }else{
            system.debug('Please provide a value');
        }
        return lowestNum;
    }

    public static  decimal lowest2(list<decimal> listB){
        decimal lowestNum;
        if(listB.size()>0){
            lowestNum=0;
            for(decimal eachNum: listB){
                eachNum=lowestNum;
        }    
            }
            else{
            system.debug('please provide a value  =>'+lowestNum);
            }
        return lowestNum;
    }
    //PRINT ELEMENTS OF ANY PROVIDED LIST
    // object sectik cunku string, list, set ,integer store yapabilir.
    //herseyi kapsayabilir.
    public static list<object>  sortForReversion(List<object> listB){
        List<object> newList = new List<object>();
        if(listB.size()>0){
        
            
            for( integer i=listB.size()-1 ; i>=0 ;i--){
                newList.add(listB[i]);
                
                
            }
            system.debug('My reversed list is==>'+ newList);
              

        }
            
        
        else{
            system.debug('Please provide a value  => ');
        }
        return newList;
   
    }
    
}




