package com.kdn.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kdn.model.dao.BoardDao;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Board;
import com.kdn.model.domain.UpdateException;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	@Qualifier("boardDao")
	private BoardDao dao;
	
	@Override
	public Board search(int boardno) {
		Board b =null;
		
		try {
			b = dao.search(boardno);		
		} catch (Exception e) {
			throw new UpdateException("DB 서버 오류");
		}
		
		return b;
	}
	
	@Override
	public List<Board> searchAll(PageBean pb) {
		List<Board> bList =null;
		
		try {
			bList = dao.searchAll(pb);		
		} catch (Exception e) {
			throw new UpdateException("DB 서버 오류");
		}
		
		return bList;
	}
	
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
	public void insert(Board board) {
		try {
			dao.insert(board);
		} catch(Exception  e){
			throw new UpdateException("DB 서버 오류");
		} 	
	}

	@Override
	public void update(Board board) {
		try {
			Board find= dao.search(board.getBoardno());
			
			if(find == null){
				throw new UpdateException("글이 존재하지 않습니다.");
			}else{
				dao.update(board);
			}
		} catch(Exception  e){
			throw new UpdateException("DB 서버 오류");
		} 
	}

	@Override
	public void delete(int boardno) {
		try {
			Board find= dao.search(boardno);
			
			if(find == null){
				throw new UpdateException("글이 존재하지 않습니다.");
			}else{
				dao.delete(boardno);
			}
		} catch(Exception  e){
			throw new UpdateException("DB 서버 오류");
		} 		
	}	
}
