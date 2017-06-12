package com.kdn.model.dao;

import java.util.List;

import com.kdn.model.domain.Accident;
import com.kdn.model.domain.Car;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;
import com.kdn.model.domain.Return;

public interface CarDao {
	public abstract int getCount();
	public abstract List<Car> availableSearch(PageBean pb); // 예약 가능한 차 조회
	public abstract List<Return> returnSearch(); // 반납신청 조회
	public abstract List<Rent> rentSearch(); // 대여 조회
	public abstract List<Reservation> reserveSearch(); // 예약 내역 조회
	public abstract List<Accident> accidentSearch(); // 사고 신청 조회
}