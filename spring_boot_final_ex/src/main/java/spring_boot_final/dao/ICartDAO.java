package spring_boot_final.dao;

import java.util.ArrayList;
import java.util.HashMap;

import spring_boot_final.model.CartVO;

public interface ICartDAO {
	void insertCart(CartVO vo);	//장바구니에 추가
	int checkProductInCart(HashMap<String, Object> map);  //동일 상품 존재 여부 확인
	void updateQtyInCart(CartVO vo);  //동일 상품이 존재하면 수량 변경
	ArrayList<CartVO> cartList(int memNo);   // 장바구니 목록
	void deleteCart(int cartNo);	//상품 삭제
}