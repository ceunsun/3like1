package com.kdn.model.dao;

import java.util.List;

import com.kdn.model.domain.Accident;
import com.kdn.model.domain.Board;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;

public interface BoardDao {
	public abstract Board search(int boardno);
	public abstract List<Board> searchAll(PageBean pb);
	public abstract int getCount();
	public abstract void insert(Board board);
	public abstract void update(Board board);
	public abstract void delete(int boardno);
	
	public abstract Accident accsearch(int accidentno);
	public abstract List<Accident> accsearchAll(PageBean pb);
	public abstract int accgetCount();
	public abstract void accinsert(Accident accident);
	public abstract void accupdate(Accident accident);
	public abstract void accdelete(int accidentno);
}
