package spring_boot_final.service;

import java.util.HashMap;

import spring_boot_final.model.*;


public interface IJoinService {

	void insertMember(JoinVO vo);
	JoinVO loginCheck(HashMap<String, Object> map);
	String memIdCheck(String memId);
	int memberDelete(JoinVO vo);
	void memberUpdate(JoinVO vo);
	JoinVO memberInfo(String memId);
	void deleteMember(String memId);

}
