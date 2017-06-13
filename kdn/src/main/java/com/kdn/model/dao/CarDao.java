package com.kdn.model.dao;

import java.util.HashMap;
import java.util.List;

import com.kdn.model.domain.Accident;
import com.kdn.model.domain.Car;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;
import com.kdn.model.domain.Return;

public interface CarDao {
	public abstract Car search(int carno); // 차량 번호에 해당하는 차량 정보를 추출
	public abstract int getCount(String carname); // 페이징을 위한 쿼리 결과물 개수를 조회
	public abstract List<Car> availableSearch(String carname, PageBean pb); // 예약 가능한 차 조회
	public abstract List<Car> returnSearch(String carstatus); // 반납 신청 조회
	public abstract List<Car> rentSearch(); // 대여 조회
	//public abstract List<Rent> rentSearch(); // 대여 조회
	public abstract List<Car> reserveSearch(String carstatus); // 예약 내역 조회
	//public abstract List<Reservation> reserveSearch(); // 예약 내역 조회
	public abstract List<Accident> accidentSearch(); // 사고 신청 조회
	public abstract void insertRent(Rent rent); 	
	public abstract void accidentUpdate(int carno);
	public abstract void reserve(Reservation reservation); // 예약 신청
	public abstract void reserveStatus(int carno); // 예약 대기 중으로 상태 변경
	public abstract void reserveConfirm(int carno); // 예약 완료 중으로 상태 변경
	public abstract void renting(int carno); // 대여 중으로 상태 변경
	public abstract void returnUpdate(int carno); // 반납신청으로 상태 변경
	public abstract void insertReturn(Return ret);//return테이블에 넣기
	public abstract void returnConfirm(int carno);// 예약가능으로 상태 변경(반납)
	
}
