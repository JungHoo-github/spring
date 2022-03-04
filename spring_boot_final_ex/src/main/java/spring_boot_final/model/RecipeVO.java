package spring_boot_final.model;

import java.util.Date;

public class RecipeVO {
	private int rcpNo;
	private String rcpTitle;
	private String rcpContent;
	private String rcpLink;
	private Date rcpJoinDate;
	private int rcpClick;
	private int memNo;
	private int igdNo;
	private int repNo;
	private String rcpImg;
	
	private String[] rcpContents;
	
	public int getRcpNo() {
		return rcpNo;
	}
	public void setRcpNo(int rcpNo) {
		this.rcpNo = rcpNo;
	}
	public String getRcpTitle() {
		return rcpTitle;
	}
	public void setRcpTitle(String rcpTitle) {
		this.rcpTitle = rcpTitle;
	}
	public String getRcpContent() {
		return rcpContent;
	}
	public void setRcpContent(String rcpContent) {
		this.rcpContent = rcpContent;
	}
	public String getRcpLink() {
		return rcpLink;
	}
	public void setRcpLink(String rcpLink) {
		this.rcpLink = rcpLink;
	}
	public Date getRcpJoinDate() {
		return rcpJoinDate;
	}
	public void setRcpJoinDate(Date rcpJoinDate) {
		this.rcpJoinDate = rcpJoinDate;
	}
	public int getRcpClick() {
		return rcpClick;
	}
	public void setRcpClick(int rcpClick) {
		this.rcpClick = rcpClick;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public int getIgdNo() {
		return igdNo;
	}
	public void setIgdNo(int igdNo) {
		this.igdNo = igdNo;
	}
	public int getRepNo() {
		return repNo;
	}
	public void setRepNo(int repNo) {
		this.repNo = repNo;
	}
	public String[] getRcpContents() {
		return rcpContents;
	}
	public void setRcpContents(String[] rcpContents) {
		this.rcpContents = rcpContents;
	}
	public String getRcpImg() {
		return rcpImg;
	}
	public void setRcpImg(String rcpImg) {
		this.rcpImg = rcpImg;
	}
	
	
	
}
