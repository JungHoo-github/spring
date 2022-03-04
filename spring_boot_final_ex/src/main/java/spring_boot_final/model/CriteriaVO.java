package spring_boot_final.model;

import java.util.Arrays;

public class CriteriaVO {
	private int pageNum;	// 현재 페이지 번호
	private int amount;		// 페이지 표시 개수
	private String type;	// 검색 타입
	private String keyword;	// 검색 키워드
	private String[] memberArr;
	private String cateCode;
	private int prdNo;
	private int skip;
	public CriteriaVO(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.skip = (pageNum-1)*amount;
	}
	
	public CriteriaVO() {
		this(1,10);
	}
	
	public String[] getTypeArr() {
		return type == null? new String[] {}:type.split("");
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.skip=(pageNum-1)*this.amount;
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.skip=(this.pageNum-1)*amount;
		this.amount = amount;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String[] getMemberArr() {
		return memberArr;
	}

	public void setMemberArr(String[] memberArr) {
		this.memberArr = memberArr;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}

	public int getPrdNo() {
		return prdNo;
	}

	public void setPrdNo(int prdNo) {
		this.prdNo = prdNo;
	}

	public int getSkip() {
		return skip;
	}

	public void setSkip(int skip) {
		this.skip = skip;
	}

	@Override
	public String toString() {
		return "CriteriaVO [pageNum=" + pageNum + ", amount=" + amount + ", type=" + type + ", keyword=" + keyword
				+ ", memberArr=" + Arrays.toString(memberArr) + ", cateCode=" + cateCode + ", prdNo=" + prdNo
				+ ", skip=" + skip + "]";
	}

}
