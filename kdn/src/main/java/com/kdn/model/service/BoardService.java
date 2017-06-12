package com.kdn.model.service;

import java.util.List;

import com.kdn.model.domain.Board;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;

public interface BoardService {
	public abstract Board search(int boardno);
	public abstract List<Board> searchAll(PageBean pb);
	public abstract int getCount();
	public abstract void insert(Board board);
	public abstract void update(Board board);
	public abstract void delete(int boardno);
}
