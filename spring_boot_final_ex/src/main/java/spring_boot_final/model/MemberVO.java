package spring_boot_final.model;

import java.util.Date;

public class MemberVO {
	private int memNo;
	private String memAllergyInfo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memEmail;
	private Date memJoinDate;
	private String memHP;
	private String memZipcode;
	private String memAddress1;
	private String memAddress2;
	
	
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getMemAllergyInfo() {
		return memAllergyInfo;
	}
	public void setMemAllergyInfo(String memAllergyInfo) {
		this.memAllergyInfo = memAllergyInfo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPwd() {
		return memPwd;
	}
	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public Date getMemJoinDate() {
		return memJoinDate;
	}
	public void setMemJoinDate(Date memJoinDate) {
		this.memJoinDate = memJoinDate;
	}
	public String getMemHP() {
		return memHP;
	}
	public void setMemHP(String memHP) {
		this.memHP = memHP;
	}
	public String getMemZipcode() {
		return memZipcode;
	}
	public void setMemZipcode(String memZipcode) {
		this.memZipcode = memZipcode;
	}
	public String getMemAddress1() {
		return memAddress1;
	}
	public void setMemAddress1(String memAddress1) {
		this.memAddress1 = memAddress1;
	}
	public String getMemAddress2() {
		return memAddress2;
	}
	public void setMemAddress2(String memAddress2) {
		this.memAddress2 = memAddress2;
	}
	@Override
	public String toString() {
		return "MemberVO [memNo=" + memNo + ", memAllergyInfo=" + memAllergyInfo + ", memId=" + memId + ", memPwd="
				+ memPwd + ", memName=" + memName + ", memEmail=" + memEmail + ", memJoinDate=" + memJoinDate
				+ ", memHP=" + memHP + ", memZipcode=" + memZipcode + ", memAddress1=" + memAddress1 + ", memAddress2="
				+ memAddress2 + "]";
	}
	
	
	
}