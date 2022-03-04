package spring_boot_final.model;

import java.util.Date;

public class BoardVO {
	
	private int brdNo;
	private Date brdDate;
	private String brdTitle;
	private String brdCon;
	private String brdImg;
	private String brdTag;
	private int brdRecommend;
	private int memNo;
	private String memId;
	private int tagNo;
	private String tagName;
	
	public int getBrdNo() {
		return brdNo;
	}
	public void setBrdNo(int brdNo) {
		this.brdNo = brdNo;
	}
	public Date getBrdDate() {
		return brdDate;
	}
	public void setBrdDate(Date brdDate) {
		this.brdDate = brdDate;
	}
	public String getBrdTitle() {
		return brdTitle;
	}
	public void setBrdTitle(String brdTitle) {
		this.brdTitle = brdTitle;
	}
	public String getBrdCon() {
		return brdCon;
	}
	public void setBrdCon(String brdCon) {
		this.brdCon = brdCon;
	}
	public String getBrdImg() {
		return brdImg;
	}
	public void setBrdImg(String brdImg) {
		this.brdImg = brdImg;
	}
	public String getBrdTag() {
		return brdTag;
	}
	public void setBrdTag(String brdTag) {
		this.brdTag = brdTag;
	}
	public int getBrdRecommend() {
		return brdRecommend;
	}
	public void setBrdRecommend(int brdRecommend) {
		this.brdRecommend = brdRecommend;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getTagNo() {
		return tagNo;
	}
	public void setTagNo(int tagNo) {
		this.tagNo = tagNo;
	}
	public String getTagName() {
		return tagName;
	}
	public void setTagName(String tagName) {
		this.tagName = tagName;
	}
	@Override
	public String toString() {
		return "BoardVO [brdNo=" + brdNo + ", brdDate=" + brdDate + ", brdTitle=" + brdTitle + ", brdCon=" + brdCon
				+ ", brdImg=" + brdImg + ", brdTag=" + brdTag + ", brdRecommend=" + brdRecommend + ", memNo=" + memNo
				+ ", memId=" + memId + ", tagNo=" + tagNo + ", tagName=" + tagName + "]";
	}
	
}