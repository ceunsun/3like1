package com.kdn.model.domain;

public class Car {
	private String carno;
	private String cartype;
	private String carstatus;
	private String carimg;
	private String carname;
	
	// reservation join 결과
	private String memberno;
	private String startdate; 
	private String enddate;
	private String reserveno;
	
	public Car() { }

	public Car(String carno, String cartype, String carstatus, String carimg,
			String carname) {
		this.carno = carno;
		this.cartype = cartype;
		this.carstatus = carstatus;
		this.carimg = carimg;
		this.carname = carname;
	}
	
	public Car(String carno, String cartype, String carstatus, String carimg,
			String carname, String memberno, String startdate, String enddate,
			String reserveno) {
		this.carno = carno;
		this.cartype = cartype;
		this.carstatus = carstatus;
		this.carimg = carimg;
		this.carname = carname;
		this.memberno = memberno;
		this.startdate = startdate;
		this.enddate = enddate;
		this.reserveno = reserveno;
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

	public String getMemberno() {
		return memberno;
	}

	public void setMemberno(String memberno) {
		this.memberno = memberno;
	}

	public String getStartdate() {
		return startdate;
	}

	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}

	public String getEnddate() {
		return enddate;
	}

	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}

	public String getReserveno() {
		return reserveno;
	}

	public void setReserveno(String reserveno) {
		this.reserveno = reserveno;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Car [carno=").append(carno).append(", cartype=")
				.append(cartype).append(", carstatus=").append(carstatus)
				.append(", carimg=").append(carimg).append(", carname=")
				.append(carname).append(", memberno=").append(memberno)
				.append(", startdate=").append(startdate).append(", enddate=")
				.append(enddate).append(", reserveno=").append(reserveno)
				.append("]");
		return builder.toString();
	}
}