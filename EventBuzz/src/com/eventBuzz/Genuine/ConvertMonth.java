package com.eventBuzz.Genuine;

public class ConvertMonth 
{
	public String monthToString(int mon)
	{
		String temp = new String();
		
		switch(mon)
		{
			case 0 : temp = "January";
					break;
			case 1 : temp = "February";
					break;
			case 2 : temp = "March";
					break;
			case 3 : temp = "April";
					break;
			case 4 : temp = "May";
					break;
			case 5 : temp = "June";
					break;
			case 6 : temp = "July";
					break;
			case 7 : temp = "August";
					break;
			case 8 : temp = "September";
					break;
			case 9 : temp = "October";
					break;
			case 10: temp = "November";
					break;
			case 11: temp = "December";
					break;
			default: temp = null;
		}
		return temp;
	}
	
	public String convertWeekName(int weekday)
	{
		switch(weekday)
		{
		case 1 : return "Sunday";
		case 2 : return "Monday";
		case 3 : return "Tuesday";
		case 4 : return "Wednesday";
		case 5 : return "Thursday";
		case 6 : return "Friday";
		case 7 : return "Saturday";
		default : return null;
		}
	}
}
