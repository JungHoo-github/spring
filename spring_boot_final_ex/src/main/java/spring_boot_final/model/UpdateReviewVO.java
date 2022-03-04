package spring_boot_final.model;

public class UpdateReviewVO {
	
	private int prdNo;
	private double ratingAvg;
	
	public int getPrdNo() {
		return prdNo;
	}
	public void setPrdNo(int prdNo) {
		this.prdNo = prdNo;
	}
	public double getRatingAvg() {
		return ratingAvg;
	}
	public void setRatingAvg(double ratingAvg) {
		this.ratingAvg = ratingAvg;
	}
	@Override
	public String toString() {
		return "UpdateReviewVO [prdNo=" + prdNo + ", ratingAvg=" + ratingAvg + "]";
	}
	
	

}
