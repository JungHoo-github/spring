package spring_boot_final.model;

public class ReplyVO {
	private int repNo;
	private String repDate;
	private String repCon;
	private int memNo;
	private int brdNo;
	
	public int getBrdNo() {
		return brdNo;
	}
	public void setBrdNo(int brdNo) {
		this.brdNo = brdNo;
	}
	public int getRepNo() {
		return repNo;
	}
	public void setRepNo(int repNo) {
		this.repNo = repNo;
	}
	public String getRepDate() {
		return repDate;
	}
	public void setRepDate(String repDate) {
		this.repDate = repDate;
	}
	public String getRepCon() {
		return repCon;
	}
	public void setRepCon(String repCon) {
		this.repCon = repCon;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	@Override
	public String toString() {
		return "ReplyVO [repNo=" + repNo + ", repDate=" + repDate + ", repCon=" + repCon + ", memNo=" + memNo
				+ ", brdNo=" + brdNo + ", getBrdNo()=" + getBrdNo() + ", getRepNo()=" + getRepNo() + ", getRepDate()="
				+ getRepDate() + ", getRepCon()=" + getRepCon() + ", getMemNo()=" + getMemNo() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	
}
