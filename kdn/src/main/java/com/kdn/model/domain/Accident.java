package com.kdn.model.domain;

public class Accident {
	private int accidentno;
	private String accidentdate;
	private String memberno;
	private int carno;
	
	public Accident() { }
	
	public Accident(int accidentno, String accidentdate, String memberno,
			int carno) {
		this.accidentno = accidentno;
		this.accidentdate = accidentdate;
		this.memberno = memberno;
		this.carno = carno;
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
		builder.append("Accident [accidentno=").append(accidentno)
				.append(", accidentdate=").append(accidentdate)
				.append(", memberno=").append(memberno).append(", carno=")
				.append(carno).append("]");
		return builder.toString();
	}
}
