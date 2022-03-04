package spring_boot_final.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring_boot_final.dao.ICartDAO;
import spring_boot_final.model.CartVO;

@Service
public class CartService implements ICartService {
@Autowired
@Qualifier("ICartDAO")
ICartDAO dao;
	@Override
	public void insertCart(CartVO vo) {
		// TODO Auto-generated method stub
		dao.insertCart(vo);
	}

	@Override
	public int checkProductInCart(int memNo, int prdNo) {
		// TODO Auto-generated method stub
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("memNo", memNo);
		map.put("prdNo", prdNo);
		return dao.checkProductInCart(map);
	}

	@Override
	public void updateQtyInCart(CartVO vo) {
		// TODO Auto-generated method stub
		dao.updateQtyInCart(vo);
	}

	@Override
	public ArrayList<CartVO> cartList(int memNo) {
		// TODO Auto-generated method stub
		return dao.cartList(memNo);
	}

	@Override
	public void deleteCart(int cartNo) {
		// TODO Auto-generated method stub
		dao.deleteCart(cartNo);
	}
}
