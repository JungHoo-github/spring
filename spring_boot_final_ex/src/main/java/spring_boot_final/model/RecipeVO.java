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
	private String recMilk;
	private String recYeast;
	private String recSalt;
	private String recSugar;
	private String recButter;
	private String recStrongflour;
	private String recMiddleflour;
	private String recEgg;
	
	
	
	public String getRecMilk() {
		return recMilk;
	}
	public void setRecMilk(String recMilk) {
		this.recMilk = recMilk;
	}
	public String getRecYeast() {
		return recYeast;
	}
	public void setRecYeast(String recYeast) {
		this.recYeast = recYeast;
	}
	public String getRecSalt() {
		return recSalt;
	}
	public void setRecSalt(String recSalt) {
		this.recSalt = recSalt;
	}
	public String getRecSugar() {
		return recSugar;
	}
	public void setRecSugar(String recSugar) {
		this.recSugar = recSugar;
	}
	public String getRecButter() {
		return recButter;
	}
	public void setRecButter(String recButter) {
		this.recButter = recButter;
	}
	public String getRecStrongflour() {
		return recStrongflour;
	}
	public void setRecStrongflour(String recStrongflour) {
		this.recStrongflour = recStrongflour;
	}
	public String getRecMiddleflour() {
		return recMiddleflour;
	}
	public void setRecMiddleflour(String recMiddleflour) {
		this.recMiddleflour = recMiddleflour;
	}
	public String getRecEgg() {
		return recEgg;
	}
	public void setRecEgg(String recEgg) {
		this.recEgg = recEgg;
	}
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
