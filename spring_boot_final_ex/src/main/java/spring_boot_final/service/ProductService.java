package spring_boot_final.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring_boot_final.dao.IProductDAO;
import spring_boot_final.model.ProductVO;

@Service
public class ProductService implements IProductService {
	@Autowired
	@Qualifier("IProductDAO")
	IProductDAO dao;
	
	@Override
	public ArrayList<ProductVO> listAllProduct(int prdNo) {
		return dao.listAllProduct(prdNo);
	}
	
	@Override
	public ProductVO recommendproduct(int prdNo) {	// 반환형 어레이리스트로
		return dao.recommendproduct(prdNo);
	}

	// 상품정보페이지
	@Override
	public ProductVO productbuy(int prdNo) {
		return dao.productbuy(prdNo);
	}
	// 상품 번호 이름
	@Override
	public ProductVO getProductNoName(int prdNo) {
		return dao.getProductNoName(prdNo);
	}
	
	@Override
	public ArrayList<ProductVO> prdTagSelect(String prdTag) {
		// TODO Auto-generated method stub
		return dao.prdTagSelect(prdTag);
	}


}
