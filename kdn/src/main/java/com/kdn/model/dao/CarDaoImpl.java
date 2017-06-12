package com.kdn.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.domain.Accident;
import com.kdn.model.domain.Car;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;
import com.kdn.model.domain.Return;

@Repository("carDao")
public class CarDaoImpl implements CarDao {
	@Autowired
	SqlSessionTemplate sql;
	
	@Override
	public int getCount(String carname) {
		return sql.selectOne("car.getCount", carname);
	}
	
	@Override
	public List<Car> availableSearch(String carname, PageBean pb) {
		RowBounds rowBounds = new RowBounds(pb.getStart()-1, pb.getEnd());
		
		return sql.selectList("car.availableSearch", carname, rowBounds);
	}
	
	@Override
	public List<Return> returnSearch() {

		return sql.selectList("car.returnSearch");
	}
	
	@Override
	public List<Rent> rentSearch() {
		return sql.selectList("car.rentSearch");
	}

	@Override
	public List<Reservation> reserveSearch() {
		return sql.selectList("car.reserveSearch");
	}

	@Override
	public List<Accident> accidentSearch() {
		return sql.selectList("car.accidentSearch");
	}

	@Override
	public void reserve(Reservation reservation) {
		sql.insert("car.reserve", reservation);
	}

	@Override
	public void reserveStatus(int carno) {
		sql.update("car.reserveStatus", carno);		
	}
}
