package spring_boot_final.dao;

import java.util.ArrayList;
import spring_boot_final.model.ProductVO;

public interface IProductDAO {
	ArrayList<ProductVO> listAllProduct(int prdNo);	// 전체 상품 조회
	ProductVO productbuy(int prdNo);// 상품 구매 페이지
	ProductVO getProductNoName(int prdNo); // 상품 번호 이름
	ProductVO recommendproduct(int prdNo);
	ArrayList<ProductVO> prdTagSelect(String prdTag);
}
