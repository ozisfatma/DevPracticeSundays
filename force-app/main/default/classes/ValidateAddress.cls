public class ValidateAddress {
    public void validateHomeAddress() {
        string houseName='Vintage';
        string streetName='CULVER';
        string cityName='Plano';
        string stateName='Utah';
        string stateISOcode='US-TX';
        string countryName='dallas';
        integer countryISOcode=980;
        Boolean isThisYourCurrentHomeOrNot=true;
        //number of char. in the street name
        integer NumberOfCharInStreetName=streetName.length();
        System.debug('Street name has '+NumberOfCharInStreetName+ 'char');
        
        Boolean isStreetnameContainsHouse=streetName.contains(houseName);
        System.debug('Is street name contains house name? '+ streetName);

        Boolean isStreetContainsIso =streetName.contains(stateISOcode);
        System.debug('Is street name contains ISO code ? '+isStreetContainsIso) ;

        String newStateISOcode=stateISOcode.toUpperCase();
        system.debug(newStateISOcode);
        //string str='Ali;
        //str=str.toUpperCase;
        
        cityName=cityName.toLowerCase();
    
        String newStateName=streetName.toLowerCase();
        System.debug('My new street name is '+ newStateName);

        string houseNameAndStreetName= houseName+' '+streetName;
        system.debug(houseNameAndStreetName);



        
        }
    }
