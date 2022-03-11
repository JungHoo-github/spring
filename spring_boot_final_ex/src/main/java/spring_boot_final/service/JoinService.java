package spring_boot_final.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring_boot_final.dao.*;
import spring_boot_final.model.JoinVO;

@Service
public class JoinService implements IJoinService {

	@Autowired
	@Qualifier("IJoinDAO")
	IJoinDAO dao;
	
	@Override
	public void insertMember(JoinVO vo) {
		dao.insertMember(vo);
	}

	@Override
	public JoinVO loginCheck(HashMap<String, Object> map) {
		return dao.loginCheck(map);
	}

	@Override
	public String memIdCheck(String memId) {
		return dao.memIdCheck(memId);
	}

	@Override
	public int memberDelete(JoinVO vo) {
		return dao.memberDelete(vo);
	}

	@Override
	public void deleteMember(String mem_id) {
		dao.deleteMember(mem_id);
	}

	@Override
	public void memberUpdate(JoinVO vo) {
		dao.memberUpdate(vo);
		
	}

	@Override
	public JoinVO memberInfo(String memId) {
		return dao.memberInfo(memId);
	}
	

}
