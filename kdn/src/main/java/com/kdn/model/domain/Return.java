package com.kdn.model.domain;

public class Return {
	private int returnno;
	private String returndate;
	private String memberno; 
	private int carno;
	
	public Return() { }
	
	public Return(int returnno, String memberno, int carno) {
		this.returnno = returnno;
		this.memberno = memberno;
		this.carno = carno;
	}
	
	public Return(int returnno, String returndate, String memberno, int carno) {
		this.returnno = returnno;
		this.returndate = returndate;
		this.memberno = memberno;
		this.carno = carno;
	}

	public int getReturnno() {
		return returnno;
	}

	public void setReturnno(int returnno) {
		this.returnno = returnno;
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
		builder.append("Return [returnno=").append(returnno)
				.append(", returndate=").append(returndate).append(", memberno=")
				.append(memberno).append(", carno=").append(carno).append("]");
		return builder.toString();
	}
}
