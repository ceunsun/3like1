package com.kdn.model.domain;

public class Reservation {
	private int reserveno;
	private String startdate;
	private String enddate;
	private int carno;
	private String memberno;
	private String place;
	
	public Reservation() { }
	
	public Reservation(String startdate, String enddate, int carno,
			String memberno) {
		this.startdate = startdate;
		this.enddate = enddate;
		this.carno = carno;
		this.memberno = memberno;
	}
	
	public Reservation(int reserveno, String startdate, String enddate,
			int carno, String memberno, String place) {
		this.reserveno = reserveno;
		this.startdate = startdate;
		this.enddate = enddate;
		this.carno = carno;
		this.memberno = memberno;
		this.place = place;
	}

	public int getReserveno() {
		return reserveno;
	}

	public void setReserveno(int reserveno) {
		this.reserveno = reserveno;
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

	public int getCarno() {
		return carno;
	}

	public void setCarno(int carno) {
		this.carno = carno;
	}

	public String getMemberno() {
		return memberno;
	}

	public void setMemberno(String memberno) {
		this.memberno = memberno;
	}


	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Reservation [reserveno=").append(reserveno)
				.append(", startdate=").append(startdate).append(", enddate=")
				.append(enddate).append(", carno=").append(carno)
				.append(", memberno=").append(memberno).append(", place=")
				.append(place).append("]");
		return builder.toString();
	}
}
