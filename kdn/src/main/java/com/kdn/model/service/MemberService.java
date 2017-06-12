package com.kdn.model.service;

import java.util.List;

import com.kdn.model.domain.Board;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;

public interface MemberService {
	public abstract Member search(String memberno);
	public List<Member>	searchAll(PageBean pb);
	public int getCount();
	public abstract void update(Member member); 
	public abstract void delete(String memberno);
		
	public abstract Reservation my_reservation(String memberno);
	public abstract Rent my_return(String memberno);
}
