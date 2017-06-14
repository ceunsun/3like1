package com.kdn.model.service;

import java.util.HashMap;
import java.util.List;

import com.kdn.model.domain.Accident;
import com.kdn.model.domain.Car;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;
import com.kdn.model.domain.Return;

public interface CarService {
	public abstract Car search(int carno); // 차량 번호에 해당하는 차량 정보를 추출
	public abstract int getCount(HashMap<String, Object> map); // 페이징을 위한 쿼리 결과물 개수를 조회
	public abstract int countEvent(String carstatus);
	public abstract List<Car> availableSearch(HashMap<String, Object> map); // 예약 가능한 차 조회
	public abstract List<Car> returnSearch(String carstatus); // 반납 신청 조회
	public abstract List<Car> rentSearch(); // 대여 조회
	public abstract List<Car> reserveSearch(String carstatus); // 예약 내역 조회
	public abstract List<Car> accidentSearch(); // 사고 신청 조회
	public abstract void insertRent(Rent rent); 
	public abstract void reserve(Reservation reservation); // 예약 신청
	public abstract void reserveStatus(int carno); // 예약 대기 중으로 상태 변경	
	public abstract void reserveConfirm(int carno); // 예약 완료로 상태 변경	
	public abstract void renting(int carno); // 대여 중으로 상태 변경	
	public abstract void accidentUpdate(HashMap<String, Object> map);
	public abstract void returnUpdate(int carno); // 반납신청으로 상태 변경
	public abstract void insertReturn(Return ret);
	public abstract void returnConfirm(int carno); // 예약가능으로 상태 변경(반납)
}
