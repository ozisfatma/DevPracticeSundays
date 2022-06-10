public with sharing class AirlineTickets {
    
    public string departureCity;
    public string arrivalCity;
    public integer flightNumber;
    public string seatAssgNum;
    
    public void printTicket(){
        system.debug( 'This ticket is journey from '+ departureCity + ' to ' + arrivalCity);
        
    }

}
