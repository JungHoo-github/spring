package spring_boot_final.controller;




import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring_boot_final.model.ProductVO;
import spring_boot_final.model.ReviewVO;
import spring_boot_final.service.ProductService;
import spring_boot_final.service.ReviewService;

@Controller
public class ProductController {
	@Autowired
	ProductService service;
	@Autowired
	ReviewService reviewService;
	
	
	//상품 구매 페이지로 이동
		@RequestMapping("/product/productbuy/{prdNo}")
		public String productbuy(@PathVariable int prdNo, Model model) {
			ProductVO prd = service.productbuy(prdNo);			
			model.addAttribute("prd", prd);
			
			/*
			 * // 추천 상품을 가져오기 ProductVO recommendPrd = service.recommendproduct(prdNo); //추천
			 * 상품 디비에서 가져오기, 반환형 어레이리스트로 model.addAttribute("recommendPrd", recommendPrd);
			 */
			return "product/productbuy";
		}
		
		@RequestMapping("/product/listAllProduct/{prdNo}")
		public String listAllProduct(@PathVariable("prdNo") int prdNo, Model model) {
			ArrayList<ProductVO> prdList = service.listAllProduct(prdNo);			
			model.addAttribute("prdList", prdList);
			return "product/productListForm";
		}
		
		@RequestMapping("/prdTagSelect/{prdTag}")
		public String prdTagSelect(@PathVariable("prdTag") String prdTag, Model model) {
			ArrayList<ProductVO> prdList = service.prdTagSelect(prdTag);			
			model.addAttribute("prdList", prdList);
			return "product/productListForm";
		}
		

	// 리뷰 쓰기
	@GetMapping("/reviewEnroll/{memNo}")
	public String reviewEnrollWindowGET(@PathVariable("memNo")String memNo, int prdNo, Model model) {
		ProductVO prd = service.getProductNoName(prdNo);
		model.addAttribute("prd", prd);
		model.addAttribute("memNo",memNo);
		
		return "/product/reviewEnroll";
	}
	
	// 리뷰 수정 팝업창
	@GetMapping("/reviewUpdate")
	public String reviewUpdateWindowGET(ReviewVO vo, Model model) {
		ProductVO product = service.getProductNoName(vo.getPrdNo());
		model.addAttribute("product", product);
		model.addAttribute("reviewInfo", reviewService.getUpdateReview(vo.getRevNo()));
		model.addAttribute("memNo", vo.getMemNo());
		
		return "/product/reviewUpdate";
		
	}

}
