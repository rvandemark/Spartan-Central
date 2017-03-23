package edu.ycp.spartan_central.model;

import java.util.Calendar;

public class Update {
	
	private final static String[] MONTHS = {
		"January", "February", "March", "April", "May", "June",
		"July", "August", "September", "October", "November", "December"
	};
	
	private String name;
	private String text;
	private Calendar date;
	
	public Update(String n, String t, int m, int d, int y) {
		name = n;
		text = t;
		date = Calendar.getInstance();
		date.set(y, m, d);
	}
	
	public String getName() {
		return name;
	}
	public String getText() {
		return text;
	}
	public Calendar getDate() {
		return date;
	}
	
	public String getFormattedDate() {
		String month = date.get(Calendar.MONTH) < 10 ? "0" + date.get(Calendar.MONTH) : Integer.toString(date.get(Calendar.MONTH));
		String day = date.get(Calendar.DAY_OF_MONTH) < 10 ? "0" + date.get(Calendar.DAY_OF_MONTH) : Integer.toString(date.get(Calendar.DAY_OF_MONTH));
		return month + "/" + day + "/" + date.get(Calendar.YEAR);
	}
	public String getFancyDate() {
		String month = MONTHS[date.get(Calendar.MONTH)];
		
		int d = date.get(Calendar.DAY_OF_MONTH);
		String day = Integer.toString(d);
		switch (d%10) {
			case 1:
				day += "st";
				break;
			case 2:
				day += "nd";
				break;
			case 3:
				day += "rd";
				break;
			default:
				day += "th";
				break;
		}
		
		String year = Integer.toString(date.get(Calendar.YEAR));
		
		return month + " " + day + ", " + year;
	}
}