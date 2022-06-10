select AccountId, FirstName, LastName, email from contact

select   name    from account where phone=null order by name 

select  name  from contact where accountId=null

select count()  from opportunity


/*PART B→Maps – Iteration
1. Store the currency exchange rate values in a Map named ‘currISOCodeAndExchangeRateMap’ for any 5 currency ISO codes. Like below:
a. AUD => 0.73
b. CAD => 0.78
c. EUR => 1.13
d. NZD => 0.68
e. INR => 0.013
2. Fetch the currency conversion rate for any one currency ISO code and print it.
3. Check if the above Map have conversion rate for SAD ISO code.
4. Collect all the curreny ISO codes from currISOCodeAndExchangeRateMap for which the
conversion rate is >= 1 in one variable and other iso codes in other variable. Expected Output: EUR – In one variable AUD, CAD, NZD, and INR – In another variable.
*/
Map< string, decimal>currISOCodeAndExchangeRateMap = new Map< string, decimal> ();
currISOCodeAndExchangeRateMap.put('aud',0.73);
currISOCodeAndExchangeRateMap.put('cad',0.78);
currISOCodeAndExchangeRateMap.put('eur',1.13);
currISOCodeAndExchangeRateMap.put('nzd',0.68);
currISOCodeAndExchangeRateMap.put('inr',0.013);
system.debug(currISOCodeAndExchangeRateMap);


//2
currISOCodeAndExchangeRateMap.get('cad');
currISOCodeAndExchangeRateMap.get('eur');
currISOCodeAndExchangeRateMap.get('nzd');
//3
 Boolean isContainsSAD=currISOCodeAndExchangeRateMap.containsKey('sad');
 system.debug(isContainsSAD);
//4
Set<string>rateMoreThan1= new Set<string> rateMoreThan1();
Set<string>rateLessThan1= new Set<string> rateLessThan1();

 for (string eacKey: currISOCodeAndExchangeRateMap.keySet()){
     if(currISOCodeAndExchangeRateMap.get(eachKey)>=0){

         rateMoreThan1.add(eachKey);
         
     }else{
         rateLessThan1.add(eachKey);
     }
    system.debug('rate list more than 1=>'+rateMoreThan1); 
    system.debug('rate list less than 1=>'+rateLessThan1); 

 }

//c1
select Id, stageName from opportunity  where stageName='Closed Won' and amount>= 35000 
//c2
select id, name ,account.name from contact order by lastName desc
//c4
select amount  from opportunity order by amount desc limit 10
select amount  from opportunity where amount!=null order by amount desc limit 10
select amount  from opportunity order by amount desc nulls last limit 10
//c3
select name ,( SELECT stageName from opportunities where stageName!='Closed Lost') from ACCOUNT 
//c4 Find lower 20 opportunities based on Amount value which are not set to Closed Won and not to
select amount, stageName from opportunity where stageName not in ('Closed Won' , 'Closed Lost') order by amount limit 20

select amount, stageName from opportunity where stageName not in ('Closed Won' , 'Closed Lost') order by amount  nulls last limit 20




    
