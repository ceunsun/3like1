package com.kdn.model.service;

import java.util.List;

import com.kdn.model.domain.Board;
import com.kdn.model.domain.Car;
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
	public abstract List<Car> my_reservation(String memberno);
	public abstract Car searchReturn(String memberno);
}
