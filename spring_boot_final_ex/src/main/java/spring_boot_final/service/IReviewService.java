package spring_boot_final.service;

import spring_boot_final.model.CriteriaVO;
import spring_boot_final.model.ReviewPageVO;
import spring_boot_final.model.ReviewVO;

public interface IReviewService {
	
	public int enrollReview(ReviewVO vo);	// 리뷰 등록
	public String checkReview(ReviewVO vo);	// 리뷰 유무 체크
	public ReviewPageVO reviewList(CriteriaVO cri);	// 댓글 페이징
	public int updateReview(ReviewVO vo);	// 댓글 수정
	public ReviewVO getUpdateReview(int revNo);	// 댓글 한개 정보(수정페이지)
	public int deleteReview(ReviewVO vo);	// 댓글 삭제
}
