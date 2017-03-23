package edu.ycp.spartan_central.model;

public class Bio {
	
	private String name;
	private String position;
	private String disciplines;
	private String text;
	
	public Bio(String n, String p, String d, String t) {
		name = n;
		position = p;
		disciplines = d;
		text = t;
	}
	
	public String getName() {
		return name;
	}
	public String getPosition() {
		return position;
	}
	public String getDisciplines() {
		return disciplines;
	}
	public String getText() {
		return text;
	}
	
	public String getImageUrl() {
		return "resources/bios/" + name + ".png";
	}
}