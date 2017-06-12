package com.kdn.model.domain;

import java.io.Serializable;

public class Member implements Serializable{
	private String memberno;	
	private String pwd;	
	private String name;	
	private String dept;	
	private String mobile;	
	private String email;	
	private int penalty;
	
	public Member() { }

	public Member(String memberno, String pwd, String name, String dept, String mobile, String email) {
		this.memberno = memberno;
		this.pwd = pwd;
		this.name = name;
		this.dept = dept;
		this.mobile = mobile;
		this.email = email;
	}

	public Member(String memberno, String pwd, String name, String dept, String mobile, String email, int penalty) {
		this.memberno = memberno;
		this.pwd = pwd;
		this.name = name;
		this.dept = dept;
		this.mobile = mobile;
		this.email = email;
		this.penalty = penalty;
	}

	public String getMemberno() {
		return memberno;
	}

	public void setMemberno(String memberno) {
		this.memberno = memberno;
	}
	
	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPenalty() {
		return penalty;
	}

	public void setPenalty(int penalty) {
		this.penalty = penalty;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Member [memberno=").append(memberno)
				.append(", pwd=").append(pwd).append(", name=").append(name)
				.append(", dept=").append(dept).append(", mobile=")
				.append(mobile).append(", email=").append(email)
				.append(", penalty=").append(penalty).append("]");
		return builder.toString();
	}
}
