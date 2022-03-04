package spring_boot_final.model;

public class PageVO {
	private int pageStart;	// 페이지 시작 번호
	private int pageEnd;	// 페이지 끝 번호
	private boolean next, prev;	// 이전, 다음 버튼 존재 유무
	private int total;	// 행 전체 개수
	private CriteriaVO cri;
	public PageVO(CriteriaVO cri, int total) {
		this.cri = cri;
		this.total = total;
	
	this.pageEnd = (int)(Math.ceil(cri.getPageNum()/10.0))*10;	// 페이지 끝 번호
	this.pageStart = this.pageEnd - 9;							// 페이지 시작 번호
	int realEnd = (int)(Math.ceil(total*1.0/cri.getAmount()));	// 전체 마지막 페이지 번호
	
	if(realEnd < pageEnd) {		// 페이지 끝 번호 유효성 체크
		this.pageEnd = realEnd;
	}
	
	this.prev = this.pageStart > 1;	// 이전 버튼 값 초기화
	this.next = this.pageEnd < realEnd;	// 다음 버튼 값 초기화
	}
	public int getPageStart() {
		return pageStart;
	}
	public void setPageStart(int pageStart) {
		this.pageStart = pageStart;
	}
	public int getPageEnd() {
		return pageEnd;
	}
	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public CriteriaVO getCri() {
		return cri;
	}
	public void setCri(CriteriaVO cri) {
		this.cri = cri;
	}
	
	@Override
	public String toString() {
		return "PageVO [pageStart=" + pageStart + ", pageEnd=" + pageEnd + ", next=" + next + ", prev=" + prev
				+ ", total=" + total + ", cri=" + cri + "]";
	}

}
