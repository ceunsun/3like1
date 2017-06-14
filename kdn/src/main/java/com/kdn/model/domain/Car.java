package com.kdn.model.domain;

public class Car {
	private String carno;
	private String cartype;
	private String carstatus;
	private String carimg;
	private String carname;
	private String enddate;
	private int reserveno;
	private String memberno;
	private String startdate; 
	private int rentno;	
 	private String rentdate;	
 	private String returndate;
	private int returnno;
	private int accidentno;
	private String accidentdate;
	
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
			int reserveno) {
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
	
	public Car(String carno, String cartype, String carstatus, String carimg,
			String carname, String memberno, int rentno, String rentdate,
			String returndate) {
		this.carno = carno;
		this.cartype = cartype;
		this.carstatus = carstatus;
		this.carimg = carimg;
		this.carname = carname;
		this.memberno = memberno;
		this.rentno = rentno;
		this.rentdate = rentdate;
		this.returndate = returndate;
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

	public int getReserveno() {
		return reserveno;
	}

	public void setReserveno(int reserveno) {
		this.reserveno = reserveno;
	}
	
	public int getRentno() {
		return rentno;
	}

	public void setRentno(int rentno) {
		this.rentno = rentno;
	}

	public String getRentdate() {
		return rentdate;
	}

	public void setRentdate(String rentdate) {
		this.rentdate = rentdate;
	}

	public String getReturndate() {
		return returndate;
	}

	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}

	public int getReturnno() {
		return returnno;
	}

	public void setReturnno(int returnno) {
		this.returnno = returnno;
	}
	
	public int getAccidentno() {
		return accidentno;
	}

	public void setAccidentno(int accidentno) {
		this.accidentno = accidentno;
	}

	public String getAccidentdate() {
		return accidentdate;
	}

	public void setAccidentdate(String accidentdate) {
		this.accidentdate = accidentdate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Car [carno=").append(carno).append(", cartype=")
				.append(cartype).append(", carstatus=").append(carstatus)
				.append(", carimg=").append(carimg).append(", carname=")
				.append(carname).append(", enddate=").append(enddate)
				.append(", reserveno=").append(reserveno).append(", memberno=")
				.append(memberno).append(", startdate=").append(startdate)
				.append(", rentno=").append(rentno).append(", rentdate=")
				.append(rentdate).append(", returndate=").append(returndate)
				.append(", returnno=").append(returnno).append(", accidentno=")
				.append(accidentno).append(", accidentdate=")
				.append(accidentdate).append("]");
		return builder.toString();
	}
}
