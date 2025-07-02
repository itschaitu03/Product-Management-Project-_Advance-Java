package com.chaitu.sbeans;

import java.time.LocalDate;

public class ConstructorInjection {

	private LocalDate date;
	private String name;
	private int ID;

	public ConstructorInjection(LocalDate date, String name, int iD) {
		super();
		this.date = date;
		this.name = name;
		ID = iD;
	}

	@Override
	public String toString() {
		return "ConstructorInjection [date=" + date + ", name=" + name + ", ID=" + ID + "]";
	}

}
