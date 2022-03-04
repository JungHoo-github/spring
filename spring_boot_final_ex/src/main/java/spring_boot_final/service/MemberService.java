package spring_boot_final.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring_boot_final.dao.IMemberDAO;
import spring_boot_final.model.MemberVO;

@Service
public class MemberService implements IMemberService {

	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	@Override
	public MemberVO myPage(int memNo) {
		// TODO Auto-generated method stub
		return dao.myPage(memNo);
	}

	@Override
	public void updateMyPage(MemberVO memVo) {
		// TODO Auto-generated method stub
		 dao.updateMyPage(memVo);
	}

	public MemberVO loginCheck(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.loginCheck(map);
	}
	
	@Override
	public String memIdCheck(String memId) {
		return dao.memIdCheck(memId);
	}
	
	@Override
	public void deleteMyPageForm(int memNo) {
		// TODO Auto-generated method stub
		dao.deleteMyPageForm(memNo);
	}
	

}
