package spring_boot_final.dao;



import java.util.List;

import spring_boot_final.model.CriteriaVO;
import spring_boot_final.model.ReviewVO;

public interface IReviewDAO {
	
	public int enrollReview(ReviewVO vo);	// 리뷰 등록
	
	public int checkReview(ReviewVO vo);	// 리뷰 유무 체크
	
	public List<ReviewVO> getReviewList(CriteriaVO cri);	// 댓글 페이징
	
	public int getReviewTotal(int prdNo);	// 댓글 총 갯수(페이징)
	
	public int updateReview(ReviewVO vo);	// 댓글 수정
	
	public ReviewVO getUpdateReview(int revNo);	// 댓글 한개 정보(수정페이지)
	
	public int deleteReview(int revNo);	// 댓글 삭제



}
