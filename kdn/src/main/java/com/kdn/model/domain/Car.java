package com.kdn.model.domain;

public class Car {
	private String carno;
	private String cartype;
	private String carstatus;
	private String carimg;
	private String carname;
	
	// reservation join 결과
	private int reserveno;
	private String memberno;
	private String startdate; 
	private String enddate;
	
	// rent join 결과
	private int RENTNO;	
 	private String RENTDATE;	
 	private String RETURNDATE;	
 
 	// return join 결과
	private String RETURNNO;
 	
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
			String carname, String memberno, int rENTNO, String rENTDATE,
			String rETURNDATE) {
		this.carno = carno;
		this.cartype = cartype;
		this.carstatus = carstatus;
		this.carimg = carimg;
		this.carname = carname;
		this.memberno = memberno;
		RENTNO = rENTNO;
		RENTDATE = rENTDATE;
		RETURNDATE = rETURNDATE;
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

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Car [carno=").append(carno).append(", cartype=")
				.append(cartype).append(", carstatus=").append(carstatus)
				.append(", carimg=").append(carimg).append(", carname=")
				.append(carname).append(", reserveno=").append(reserveno)
				.append(", memberno=").append(memberno).append(", startdate=")
				.append(startdate).append(", enddate=").append(enddate)
				.append(", RENTNO=").append(RENTNO).append(", RENTDATE=")
				.append(RENTDATE).append(", RETURNDATE=").append(RETURNDATE)
				.append("]");
		return builder.toString();
	}
}