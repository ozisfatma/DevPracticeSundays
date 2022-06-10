
/*20. "MathPractice" Class'ının içerisine "practiceEight" isimli bir method oluşturun. Bu method iki integer parametere kabul etsin ve iki parametre arasındaki sayıların toplamını return etsin. [İpucu: Toplama işlemine parametre değerleri dahil edilmeli ve parametrelerin eşitlik durumunda iki parametre toplanmalıdır.]*/


public  class MathPractice20 {
    public  integer practiceEight( integer num1,integer num2) {
    integer sumAll=0;
   if(num1<num2){
       for (Integer i=num1; i <=num2; i++) {
           sumAll+=i;
       }   
    }else if(num1>num2){
        for (Integer i =num2; i <=num1; i++) {
            sumAll+=i;
       }
   }else{
       sumAll=num1+num2;
   }
   return sumAll;
   }
}






