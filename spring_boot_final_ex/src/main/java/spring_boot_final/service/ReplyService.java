package spring_boot_final.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring_boot_final.dao.IReplyDAO;
import spring_boot_final.model.ReplyVO;



@Service
public class ReplyService implements IReplyService {

	@Autowired
	@Qualifier("IReplyDAO")
	IReplyDAO dao;
	
	@Override
	public ArrayList<ReplyVO> insertReplyForm(int repNo) {
		// TODO Auto-generated method stub
		return dao.insertReplyForm(repNo);
	}
	@Override
	public void insertReply(ReplyVO repVo) {
		// TODO Auto-generated method stub
		 dao.insertReply(repVo);
	}
	@Override
	public void deleteReplyForm(int repNo) {
		// TODO Auto-generated method stub
		 dao.deleteReplyForm(repNo);
	}
	
}
