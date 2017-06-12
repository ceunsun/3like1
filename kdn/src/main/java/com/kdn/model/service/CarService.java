package com.kdn.model.service;

import java.util.List;

import com.kdn.model.domain.Accident;
import com.kdn.model.domain.Car;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;
import com.kdn.model.domain.Return;

public interface CarService {
	public abstract int getCount();
	public abstract List<Car> availableSearch(PageBean pb); // 예약 가능한 차 조회
	public abstract List<Return> returnSearch();
	public abstract List<Rent> rentSearch();
	public abstract List<Reservation> reserveSearch();
	public abstract List<Accident> accidentSearch();

}
