package spring_boot_final.dao;

import java.util.ArrayList;

import spring_boot_final.model.ReplyVO;

public interface IReplyDAO {
	ArrayList<ReplyVO> insertReplyForm(int repNo) ;
	void insertReply(ReplyVO repVo);
	void deleteReplyForm(int repNo);
}
