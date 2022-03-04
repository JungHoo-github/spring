package spring_boot_final.dao;


import java.util.HashMap;

import spring_boot_final.model.MemberVO;

public interface IMemberDAO {
	MemberVO loginCheck(HashMap<String, Object> map);
	MemberVO myPage(int memNo);
	String memIdCheck(String memId);
	void updateMyPage(MemberVO memVo);
	void deleteMyPageForm(int memNo);
}
