package com.kdn.model.domain;

public class Car {
	private String carno;
	private String cartype;
	private String carstatus;
	private String carimg;
	private String carname;
	
	public Car() { }

	public Car(String carno, String cartype, String carstatus, String carimg,
			String carname) {
		this.carno = carno;
		this.cartype = cartype;
		this.carstatus = carstatus;
		this.carimg = carimg;
		this.carname = carname;
	}

	public String getCarno() {
		return carno;
	}

	public void setCarno(String carno) {
		this.carno = carno;
	}

	public String getCartype() {
		return cartype;
	}

	public void setCartype(String cartype) {
		this.cartype = cartype;
	}

	public String getCarstatus() {
		return carstatus;
	}

	public void setCarstatus(String carstatus) {
		this.carstatus = carstatus;
	}

	public String getCarimg() {
		return carimg;
	}

	public void setCarimg(String carimg) {
		this.carimg = carimg;
	}

	public String getCarname() {
		return carname;
	}

	public void setCarname(String carname) {
		this.carname = carname;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Car [carno=").append(carno).append(", cartype=")
				.append(cartype).append(", carstatus=").append(carstatus)
				.append(", carimg=").append(carimg).append(", carname=")
				.append(carname).append("]");
		return builder.toString();
	}
}
