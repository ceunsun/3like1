package com.kdn.model.domain;

public class Waiting {
	private int waitingno;
	private int reserveno;
	private String memberno ;
	
	public Waiting() { }

	public Waiting(int waitingno, int reserveno, String memberno) {
		this.waitingno = waitingno;
		this.reserveno = reserveno;
		this.memberno = memberno;
	}

	public int getWaitingno() {
		return waitingno;
	}

	public void setWaitingno(int waitingno) {
		this.waitingno = waitingno;
	}

	public int getReserveno() {
		return reserveno;
	}

	public void setReserveno(int reserveno) {
		this.reserveno = reserveno;
	}

	public String getMemberno() {
		return memberno;
	}

	public void setMemberno(String memberno) {
		this.memberno = memberno;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Waiting [waitingno=").append(waitingno)
				.append(", reserveno=").append(reserveno).append(", memberno=")
				.append(memberno).append("]");
		return builder.toString();
	}
}
