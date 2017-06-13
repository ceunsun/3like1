package com.kdn.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.dao.MemberDao;
import com.kdn.model.domain.Board;
import com.kdn.model.domain.Car;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;
import com.kdn.model.domain.UpdateException;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	@Qualifier("memberDao")
	private MemberDao dao;
	
	@Override
	public Member search(String memberno) {
		Member m = null;
	
		try {
			if(memberno!=null) {
				m = dao.search(memberno);
			}
		} catch (Exception e) {
			throw new UpdateException("DB 서버 오류");
		}
		
		return m;
	}
	
	@Override
	public List<Member> searchAll(PageBean pb) {
		List<Member> mList = null;
		
		try {		
			mList = dao.searchAll(pb);
		} catch (Exception e) {
			throw new UpdateException("DB 서버 오류");
		}
		
		return mList;
	}
	
	@Override
	public int getCount() {
		int count=0;
		
		try {		
			count = dao.getCount();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	
	@Override
	public void update(Member member) {
		try {
			Member find= dao.search(member.getMemberno());
			
			if(find == null){
				throw new UpdateException("존재하지 않는 사원 입니다.");
			}else{
				dao.update(member);
			}
		} catch(Exception  e){
			throw new UpdateException("DB 서버 오류");
		} 
	}

	@Override
	public void delete(String memberno) {
		try {
			Member find= dao.search(memberno);
			
			if(find == null){
				throw new UpdateException("존재하지 않는 사원 입니다.");
			}else{
				dao.delete(memberno);
			}
		} catch(Exception  e){
			throw new UpdateException("DB 서버 오류");
		} 
	}

	
	@Override
	public Reservation my_reservation(String memberno) {
		Reservation m = null;
	
		try {
			if(memberno!=null) {
				m = dao.my_reservation(memberno);
			}
		} catch (Exception e) {
			throw new UpdateException("DB 서버 오류");
		}
		
		return m;
	}
	
	@Override
	public Car my_return(String memberno) {
		Car c = null;
	
		try {
			if(memberno!=null) {
				c = dao.my_return(memberno);
			}
		} catch (Exception e) {
			throw new UpdateException("DB 서버 오류");
		}
		
		return c;
	}
}
