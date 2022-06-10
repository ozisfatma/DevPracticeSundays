

/*Create one apex class (iterationExercise2).
Create one method with following name:         
Method : getPerfectAverage(num1, num2)
    This method should take two parameters named as num1 and num2 with Integer data type, and it should give the average of the number
    
    Expected Outcome:
    Input: num1 = 5
    Input: num2 = 15
    Output: 10
    
    Calculation :
    5 + 6 + 7 + 8 + 9 + 10 + 11 + 12 + 13 + 14 + 15 = 110
    Total 11 numbers between 5 to 15
    110 / 11 = 10*/


public class Itiration2 {
    

    public void getPerfectAverage(integer num1 ,integer num2) {
        integer countofInteger= num2-num1+1;
        integer sum=0;
            for(integer i=num1;i<=num2; i++){
            system.debug(sum);
            sum=sum+ i;
            //sum+=i   i in degeri kadar arttir.
            }
            integer avg=sum/countofInteger;
           system.debug('Total '+ countofInteger+'numbers between '+ num1+' to '+num2+'='+avg);

    }
}
