package com.kdn.model.domain;

import java.io.Serializable;

public class Board implements Serializable{
	private int boardno;
	private String memberno;	
	private String title;	
	private String content;	
	private String regdate;
	
	public Board() { }
	
	public Board(int boardno, String memberno, String title) {
		this.boardno = boardno;
		this.memberno = memberno;
		this.title = title;
	}
	
	public Board(int boardno, String memberno, String title, String content,
			String regdate) {
		this.boardno = boardno;
		this.memberno = memberno;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	public String getMemberno() {
		return memberno;
	}

	public void setMemberno(String memberno) {
		this.memberno = memberno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "Board [boardno=" + boardno + ", memberno=" + memberno + ", title=" + title
				+ ", content=" + content + ", regdate=" + regdate + "]";
	}	

}
