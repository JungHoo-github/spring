package spring_boot_final.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring_boot_final.model.CartVO;
import spring_boot_final.service.CartService;

@Controller
public class CartController {
	@Autowired
	CartService service;
	
	// 장바구니에 추가
	@RequestMapping("/productInfo/insertCart")
	public String insertCart(CartVO vo, HttpSession session) {
		System.out.print("bb");
		// 로그인 성공 시 생성한 세션 sid값 가져와서 memId에 저장
		int memNo = (int)session.getAttribute("sno");
		vo.setMemNo(memNo);
		System.out.print("vo"+vo);
		// 동일 상품이 존재하는지 확인
		
		  int count = service.checkProductInCart(vo.getPrdNo(), memNo);
		  
		  if(count == 0) { // 동일 상품이 존재하지 않으면 장바구니에 추가 
			  service.insertCart(vo); 
		  }else {		  
		  // 존재하면 주문수량 변경 
		  service.updateQtyInCart(vo);
		  }
		 
		return "redirect:/productInfo/cartList";
	}
	
	@RequestMapping("/productInfo/cartList")
	public String cartList(Model model, HttpSession session) {		
		int memNo = (int) session.getAttribute("sno");
		System.out.println("memNo : " + memNo);
		ArrayList<CartVO> cartList = service.cartList(memNo);
		model.addAttribute("cartList", cartList);
		
		return "/productInfo/cartListView";
	}
	


	/*
	 * //장바구니 목록 보기
	 * 
	 * @RequestMapping("/productInfo/cartListView") public String cartList(Model
	 * model, HttpSession session) { int memNo = (int)session.getAttribute("sno");
	 * ArrayList<CartVO> cartList = service.cartList(memNo);
	 * model.addAttribute("cartList", cartList);
	 * 
	 * return "productInfo/cartListView"; }
	 */
	// 장바구니 삭제
	@ResponseBody
	@RequestMapping("/deleteCart")
	public int deleteCart(@RequestParam("chbox[]") ArrayList<String> chkArr) {
		System.out.println("aa");
		int result = 0;
		String cartNo ="";
		
		if(chkArr != null) {
			for(String i : chkArr) {
				cartNo = i;
				System.out.print(cartNo);
				service.deleteCart(Integer.parseInt(cartNo));
				
			}
			result = 1;
		}
		return result;
	}
}
