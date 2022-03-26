var ssCountdownDefaultOptions = ssCountdownDefaultOptions || {};

ssCountdownDefaultOptions.secondsColor 	= 	"#11c8ea";
ssCountdownDefaultOptions.minutesColor 	= 	"#ff5153";
ssCountdownDefaultOptions.hoursColor 	= 	"#23d0a2";
ssCountdownDefaultOptions.daysColor 	= 	"#f9b401";

/*
 * IMPORTANT NOTES:
 * The parameters below must be in the correct format, including length of them. 
 * */


var date = new Date();
date.setDate(date.getDate() + 30);
var currentMonth = date.getMonth() + 1;
if (currentMonth < 10) { currentMonth = '0' + currentMonth; }
var currentDay = date.getDate();
if (currentDay < 10) { currentDay = '0' + currentDay; }
var dateMsg = date.getFullYear() +'-'+ (currentMonth) + '-' + currentDay;

/*Date Format: YYYY-MM-DD*/
ssCountdownDefaultOptions.date 		= 	"2014-12-31";	
ssCountdownDefaultOptions.date 		= 	dateMsg;	

/*Time Format: hh:mm:ss*/
ssCountdownDefaultOptions.time 		= 	"15:00:00";		

/*Timezone Format: GMT+HH:MM
 * Example:
 * GMT+00:00
 * GMT+08:00
 * GMT-08:30
*/
ssCountdownDefaultOptions.timezone 		= 	"GMT+03:00";