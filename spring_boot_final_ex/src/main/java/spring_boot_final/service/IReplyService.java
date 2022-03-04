package spring_boot_final.service;

import java.util.ArrayList;

import spring_boot_final.model.ReplyVO;

public interface IReplyService {
	ArrayList<ReplyVO> insertReplyForm(int repNo) ;
	void insertReply(ReplyVO repVo);
	void deleteReplyForm(int repNo);
}
