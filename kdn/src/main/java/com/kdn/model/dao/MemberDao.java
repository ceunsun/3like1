package com.kdn.model.dao;

import java.util.List;

import com.kdn.model.domain.Board;
import com.kdn.model.domain.Car;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;

public interface MemberDao {
	public abstract Member search(String memberno);
	public abstract List<Member> searchAll(PageBean pb);
	public abstract int getCount();	
	public abstract void update(Member member);
	public abstract void delete(String memberno);
		
	public abstract Reservation my_reservation(String memberno);	//나의 예약 정보
	public abstract Car my_return(String memberno);				//반납신청
}
