public class MyCity {
 /*   public void  stringMethod() {
        //a
        string str1='I am a salesforce Developer';
        Boolean isContainsForce= str1.contains('force');
        system.debug(isContainsForce);
        //b
        integer lengthOfStr1=str1.length();
        system.debug(lengthOfStr1);
        //c
        string str1New=str1.toUpperCase();
        system.debug(str1New);

    }*/
    /*  7-MyCity class'ına dateMethod adında yeni bir metod oluşturun. Bu Method içerisinde bugünün tarihini* tanımlayıp System.debug yardımı ile yazdırın. 
    Extra : Aynı method içerisinde ayrı bir variable'da şuanki tarih ve saati tanımlayın* ve 50 saat sonrasını* System.debug yardımı ile yazdırın*/
    
    public void dateMethod(){
        Date todaysDate=Date.today();
        system.debug('Todays date is==>' +todaysDate);
        DateTime todaysDateTime=DateTime.now();
        system.debug(todaysDateTime);
        DateTime todaysDatePlus50=todaysDateTime.addHours(50);
        system.debug(todaysDatePlus50);

    }
/* 8- MyCity clasında bulunan cityInformation metodunu kullanarak bulunduğunuz ülkenin kuruluş tarihini* ve bulunduğunuz lokasyonun gün doğumu saatini* System.debug yardımı ile yazdırın. [*bknz:Link]
Extra : İçinde bulunduğumuz tarihten 36 ay öncesini System.debug yardımı ile yazdırın.*/
    publlic void cityInformation(){
        Date EstablishmentDateOfUsa=Date.newInstance(1776,7,4);
        Datetime todaysDateTime=DateTime.newInstanceGmt()

    }

}
