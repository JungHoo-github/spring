package spring_boot_final.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import spring_boot_final.model.CriteriaVO;
import spring_boot_final.model.ReviewPageVO;
import spring_boot_final.model.ReviewVO;
import spring_boot_final.service.ReviewService;

@RestController
@RequestMapping("/review")
public class ReviewController {
	@Autowired
	private ReviewService service;
	
	/* 리뷰 등록 */
	@PostMapping("/enroll")
	public void enrollReviewPOST(ReviewVO vo) {
		
		System.out.println(vo.getMemNo());
		service.enrollReview(vo);
		/*
		 * System.out.println(vo.getPrdNo()); System.out.println(vo.getMemNo());
		 * System.out.println(vo.getRating()); System.out.println(vo.getRevCon());
		 */
	}
	
	/* 리뷰 체크 */
	/* memNo, prdNo 파라미터 */
	/* 존재 : 1 / 존재x : 0 */
	@PostMapping("/check")
	public String reviewCheckPOST(ReviewVO vo) {
		System.out.println(vo.getMemNo());
		System.out.println(service.checkReview(vo));
		
		return service.checkReview(vo);
	}
	/* 댓글 페이징 */
	@GetMapping(value="/list", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ReviewPageVO reviewListPOST(CriteriaVO cri) {
		return service.reviewList(cri);
	}
	
	/* 댓글 수정 */
	@PostMapping("/update")
	public void reviewModifyPOST(ReviewVO vo) {
		service.updateReview(vo);
	}
	
	/* 댓글 삭제 */
	@PostMapping("/delete")
	public void reviewDeletePOST(ReviewVO vo) {
		service.deleteReview(vo);
	}

}
