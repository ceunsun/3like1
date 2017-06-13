package com.kdn.model.domain;

public class Rent {
	private int rentno;
	private String rentdate;
	private String returndate;
	private String memberno;
	private int carno;
	
	public Rent() { }
		
	public Rent(String rentdate, String returndate, String memberno, int carno) {
		this.rentdate = rentdate;
		this.returndate = returndate;
		this.memberno = memberno;
		this.carno = carno;
	}

	public Rent(int rentno, String rentdate, String returndate, String memberno, int carno) {
		this.rentno = rentno;
		this.rentdate = rentdate;
		this.returndate = returndate;
		this.memberno = memberno;
		this.carno = carno;
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

	public String getMemberno() {
		return memberno;
	}

	public void setMemberno(String memberno) {
		this.memberno = memberno;
	}

	public int getCarno() {
		return carno;
	}

	public void setCarno(int carno) {
		this.carno = carno;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Rent [rentno=").append(rentno).append(", rentdate=")
				.append(rentdate).append(", returndate=").append(returndate)
				.append(", memberno=").append(memberno).append(", carno=")
				.append(carno).append("]");
		return builder.toString();
	}
}
