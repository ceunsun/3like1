package com.kdn.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.domain.Accident;
import com.kdn.model.domain.Car;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;
import com.kdn.model.domain.Return;

@Repository("carDao")
public class CarDaoImpl implements CarDao {
	@Autowired
	SqlSessionTemplate sql;
	
	@Override
	public Car search(int carno) {
		return sql.selectOne("car.search", carno);
	}
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
	public List<Car> rentSearch() {
		return sql.selectList("car.rentSearch");
	}
	
	/*@Override
	public List<Rent> rentSearch() {
		return sql.selectList("car.rentSearch");
	}*/
	
	@Override
	public List<Car> reserveSearch(String carstatus) {
		return sql.selectList("car.reserveSearch", carstatus);
	}

	@Override
	public List<Accident> accidentSearch() {
		return sql.selectList("car.accidentSearch");
	}
	
	@Override
	public void accidentUpdate(int carno) {
		sql.update("car.accidentUpdate", carno);
	}


	@Override
	public void reserve(Reservation reservation) {
		sql.insert("car.reserve", reservation);
	}

	@Override
	public void reserveStatus(int carno) {
		sql.update("car.reserveStatus", carno);		
	}

	@Override
	public void reserveConfirm(int carno) {
		sql.update("car.reserveConfirm", carno);
	}
	
	@Override
	public void renting(int carno) {
		sql.update("car.renting", carno);
	}
}
