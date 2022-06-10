Date birthDate= Date.newInstance(1981,04,04);
Date todaysDate=Date.today();
integer myAgeInDays=todaysDate.daysBetween(birthDate);
system.debug('My age in days ==>' + myAgeInDays);

//My age in Months

integer myAgeInMonths=todaysDate.monthsBetween(birthDate);
system.debug('My age in Months ==>' + myAgeInMonths);

//My age in Year

integer myAgeInYears=myAgeInMonths/12;
system.debug('My age in Years ==>' + myAgeInYears);

//view=word wrap !!!!
//2. Write an apex script to show the total number of days remaining for the expiration of the plan
Date expirationEndDate=Date.newInstance(2024,12,3);
Date currentDate=Date.today();
integer remainingDateForExpiration=currentDate.daysBetween(expirationEndDate);
system.debug('Remaining day for expiration ===>'+ remainingDateForExpiration);


