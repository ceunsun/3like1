package com.kdn.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.dao.CarDao;
import com.kdn.model.domain.Accident;
import com.kdn.model.domain.Car;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;
import com.kdn.model.domain.Return;
import com.kdn.model.domain.UpdateException;

@Service("carService")
public class CarServiceImpl implements CarService {
	@Autowired
	@Qualifier("carDao")
	private CarDao dao;
	
	@Override
	public int getCount() {
		int count=0;
		
		try {		
			count = dao.getCount();
		} catch (Exception e) {
			throw new UpdateException("DB 서버 오류");
		}
		return count;
	}
	
	@Override
	public List<Car> availableSearch(PageBean pb) {
		List<Car> aList = null;
		
		try {		
			aList = dao.availableSearch(pb);
		} catch (Exception e) {
			throw new UpdateException("DB 서버 오류");
		}
		
		return aList;
	}
	
	@Override
	public List<Return> returnSearch() {
		List<Return> rList = null;
		
		try {				
			rList = dao.returnSearch();			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rList;
	}
	
	@Override
	public List<Rent> rentSearch() {
		List<Rent> rList =null;
		
		try {
			rList = dao.rentSearch();		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rList;
	}

	@Override
	public List<Reservation> reserveSearch() {
		List<Reservation> rList =null;
		
		try {
			rList = dao.reserveSearch();		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rList;
	}

	@Override
	public List<Accident> accidentSearch() {
		List<Accident> aList =null;
		
		try {
			aList = dao.accidentSearch();		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return aList;
	}
}