package spring_boot_final.dao;

import java.util.HashMap;

import spring_boot_final.model.JoinVO;

public interface IJoinDAO {
	
	void insertMember(JoinVO vo);
	JoinVO loginCheck(HashMap<String, Object> map);
	String memIdCheck(String memId);
	int memberDelete(JoinVO vo);
	void memberUpdate(JoinVO vo);
	JoinVO memberInfo(String memId);
	void deleteMember(String mem_id);
}
