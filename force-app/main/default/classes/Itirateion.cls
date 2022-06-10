/*Create one apex class (iterationExercise).
Create one method with following name:

Method : getMultiplicationTable(num)
    This method should take one parameter named as num with Integer data type, and it should generate the table of that number

    Expected Outcome:
    Input: num = 32
    Output:  1 x 32 = 32
            2 x 32 = 64
            3 x 32 = 96
            .
            .
            .
            .
            .
            10 x 32 = 320


*/

public class Itirateion {
    public  void getMultiplicationTable( integer num) {
    
          for(integer i=1;i<11;i++){ 
          
          system.debug( 'output: '+ i+' * '+num+' = ' + i*num);
          }    

    }
}
