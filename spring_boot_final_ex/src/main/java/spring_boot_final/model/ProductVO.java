package spring_boot_final.model;

public class ProductVO {
	private int prdNo;
	private String prdName;
	private int prdPrice;
	private String prdCompany;
	private int prdStock;
	private String prdDescript;
	private String prdImg;
	private String prdTag;
	private double ratingAvg;
	
	
	
	public String getPrdTag() {
		return prdTag;
	}
	public void setPrdTag(String prdTag) {
		this.prdTag = prdTag;
	}
	public double getRatingAvg() {
		return ratingAvg;
	}
	public void setRatingAvg(double ratingAvg) {
		this.ratingAvg = ratingAvg;
	}
	public int getPrdNo() {
		return prdNo;
	}
	public void setPrdNo(int prdNo) {
		this.prdNo = prdNo;
	}
	public String getPrdName() {
		return prdName;
	}
	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}
	public int getPrdPrice() {
		return prdPrice;
	}
	public void setPrdPrice(int prdPrice) {
		this.prdPrice = prdPrice;
	}
	public String getPrdCompany() {
		return prdCompany;
	}
	public void setPrdCompany(String prdCompany) {
		this.prdCompany = prdCompany;
	}
	public int getPrdStock() {
		return prdStock;
	}
	public void setPrdStock(int prdStock) {
		this.prdStock = prdStock;
	}
	public String getPrdDescript() {
		return prdDescript;
	}
	public void setPrdDescript(String prdDescript) {
		this.prdDescript = prdDescript;
	}
	public String getPrdImg() {
		return prdImg;
	}
	public void setPrdImg(String prdImg) {
		this.prdImg = prdImg;
	}
}
