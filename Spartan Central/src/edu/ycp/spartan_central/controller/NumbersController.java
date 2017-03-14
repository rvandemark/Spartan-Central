package edu.ycp.spartan_central.controller;

import edu.ycp.spartan_central.model.Numbers;

public class NumbersController {
	private Numbers model;
	
	public void setModel (Numbers m) {
		model = m;
	}
	
	public void add() {
		model.setResult(model.getFirst() + model.getSecond() + model.getThird());
	}
	public void multiply() {
		model.setResult(model.getFirst() * model.getSecond() * model.getThird());
	}
}
