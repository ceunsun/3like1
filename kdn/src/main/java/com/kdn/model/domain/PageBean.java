package com.kdn.model.domain;

public class PageBean {
	private int start=1;
	private int end;
	private int interval=10; // 한 페이지에 게시할 글 개수
	private int total; // 전체 게시글 개수
	private int totalPage; // 페이지 개수
	private int pageNo; // 현재 페이지 번호
	
	public PageBean() {	}
	
	public PageBean(int start, int end, int total, int pageNo) {
		this.start = start;
		this.end = end;
		this.total = total;
		this.pageNo = pageNo;
	}

	public int getStart() {
		if(pageNo>1){
			start = (interval*(pageNo-1))+1;
		}else{
			start = 1;
		}
		
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		if(pageNo>1){
			end = interval*pageNo;
		}else{
			end = interval;
		}
		
		return end;
	}

	public void setEnd(int end) {
		
		this.end = end;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getInterval() {
		return interval;
	}

	public void setInterval(int interval) {
		this.interval = interval;
	}

	public int getTotalPage() {
		if((total%interval)!=0){
			return this.totalPage = (total/interval)+1;
		}else{
			return this.totalPage = (total/interval);
		}		
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("PageBean [start=").append(start).append(", end=")
				.append(end).append(", interval=").append(interval)
				.append(", total=").append(total).append(", totalPage=")
				.append(totalPage).append(", pageNo=").append(pageNo)
				.append("]");
		return builder.toString();
	}
}
