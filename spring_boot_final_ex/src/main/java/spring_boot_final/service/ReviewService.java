package spring_boot_final.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring_boot_final.dao.IReviewDAO;
import spring_boot_final.model.CriteriaVO;
import spring_boot_final.model.PageVO;
import spring_boot_final.model.ReviewPageVO;
import spring_boot_final.model.ReviewVO;
import spring_boot_final.model.UpdateReviewVO;

@Service
public class ReviewService implements IReviewService {
	@Autowired
	@Qualifier("IReviewDAO")
	IReviewDAO dao;

	
	@Override
	public int enrollReview(ReviewVO vo) {
		
		int result = dao.enrollReview(vo);
		
		setRating(vo.getPrdNo());
		
		return result;
	}
	@Override
	public String checkReview(ReviewVO vo) {
		
		Integer result = dao.checkReview(vo);
		
		if(result == 0) {
			return "0";
		} else {
			return "1";
		}
	}
	
	@Override
	public ReviewPageVO reviewList(CriteriaVO cri) {
		ReviewPageVO vo = new ReviewPageVO();
		
		vo.setList(dao.getReviewList(cri));
		vo.setPageInfo(new PageVO(cri, dao.getReviewTotal(cri.getPrdNo())));
		
		return vo;
	}
	
	@Override
	public int updateReview(ReviewVO vo) {
		int result = dao.updateReview(vo);
		
		setRating(vo.getPrdNo());
		
		return result;
	}
	
	@Override
	public ReviewVO getUpdateReview(int revNo) {
		return dao.getUpdateReview(revNo);
	}
	
	@Override
	public int deleteReview(ReviewVO vo) {
		int result = dao.deleteReview(vo.getRevNo());
		
		setRating(vo.getPrdNo());
		
		return result;
	}

	public void setRating(int prdNo) {
		Double ratingAvg = dao.getRatingAverage(prdNo);
		
		if(ratingAvg == null) {
			ratingAvg = 0.0;
		}
		
		ratingAvg = (double) (Math.round(ratingAvg*10));
		ratingAvg = ratingAvg / 10;
		
		UpdateReviewVO uvo = new UpdateReviewVO();
		uvo.setPrdNo(prdNo);
		uvo.setRatingAvg(ratingAvg);
		
		dao.updateRating(uvo);
	}
}
