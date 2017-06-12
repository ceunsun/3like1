package com.kdn.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kdn.model.domain.Board;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;

@Repository("boardDao")
public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	private SqlSessionTemplate sql;
	
	@Override
	public Board search(int boardno) {
		return sql.selectOne("board.search", boardno);
	}
	
	@Override
	public List<Board> searchAll(PageBean pb) {
		RowBounds rowBounds = new RowBounds(pb.getStart()-1, pb.getEnd());
		
		return sql.selectList("board.searchAll", pb, rowBounds);
	}
	
	@Override
	public int getCount() {
		return sql.selectOne("board.getCount");
	}

	@Override
	public void insert(Board board) {
		sql.insert("board.insert", board);
	}

	@Override
	public void update(Board board) {
		sql.update("board.update", board);		
	}

	@Override
	public void delete(int boardno) {
		sql.delete("board.delete", boardno);		
	}
}
