package com.kdn.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.domain.Board;
import com.kdn.model.domain.Car;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;

@Repository("memberDao")
public class MemberDaoImpl implements MemberDao {
	@Autowired
	private SqlSessionTemplate sql;
	
	@Override
	public Member search(String memberno) {
		return sql.selectOne("member.search", memberno);
	}
	
	@Override
	public List<Member> searchAll(PageBean pb) {
		RowBounds rowBounds = new RowBounds(pb.getStart()-1, pb.getEnd());
		
		return sql.selectList("member.searchAll", pb, rowBounds);
	}
	
	@Override
	public int getCount() {
		return sql.selectOne("member.getCount");
	}
	
	@Override
	public void update(Member m) {
		sql.update("member.update", m);
	}

	@Override
	public void getPenalty(HashMap<String, Object> map) {
		sql.update("member.getPenalty", map);
	}
	@Override
	public void delete(String memberno) {
		sql.delete("member.delete", memberno);
	}
	
	@Override
	public List<Car> my_reservation(String memberno) {
		return sql.selectList("member.my_reservation", memberno);
	}
	
	@Override
	public List<Car> searchReturn(String memberno) {
		return sql.selectList("member.searchReturn", memberno);
	}
}
