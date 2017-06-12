package com.kdn.model.dao;

import java.util.List;

import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;

public interface MemberDao {
	public abstract Member search(String memberno);
	public abstract List<Member> searchAll(PageBean pb);
	public abstract int getCount();	
	public abstract void update(Member member);
	public abstract void delete(String memberno);
}
