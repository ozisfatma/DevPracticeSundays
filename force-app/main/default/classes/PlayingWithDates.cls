public class PlayingWithDates {
    public void  printDateOutput() {
    //print todays date    
    Date todaysDate=Date.today();
    System.debug('Today\'s date is =' +todaysDate);
    //
    Date newInstanceDate=Date.newInstance(2789,11,5);
    system.debug('My new istance date is ='+newInstanceDate );

    Date newInstanceDate2=Date.newInstance(1459,3,4);
    system.debug('My new istance date is ='+newInstanceDate );
    //write date dynamically
    integer yearInt=2022;
    integer monthInt=2;
    integer dayInt=13;
    date newInstanceDate3=Date.newInstance(yearInt,monthInt,dayInt);
    System.debug(newInstanceDate3);


    integer yearInt2=2023;
    integer monthInt2=2;
    integer dayInt2=1;
    date newInstanceDate4=Date.newInstance(yearInt2,monthInt2,dayInt2);
    System.debug(newInstanceDate3);





    

    }
}
