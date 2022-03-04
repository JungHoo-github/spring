package spring_boot_final.controller;



import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import spring_boot_final.model.ReplyVO;
import spring_boot_final.service.ReplyService;


@Controller
public class ReplyController {
	
	@Autowired
	ReplyService service;
	//게시글의 목록에서 상세보기 화면으로 넘어가면서 나와야함
	//상세보기 불러올 때 들어오는 게시글 번호로 가져와야하고 
	//폼으로 가는거 만들어야함
	@RequestMapping("/insertReplyForm/{repNo}")
	public String insertReplyForm( @PathVariable String repNo, Model model,ReplyVO repVo ) {
		System.out.println("repNo:" + repNo);
		ArrayList<ReplyVO> Rep =service.insertReplyForm(Integer.parseInt(repNo));
		System.out.println("repNo2:" + Rep);
		model.addAttribute("repList",Rep);
		return "reply/replyForm";
	}
	
	@RequestMapping("/insertReply")
	public String insertReply(ReplyVO repVo,HttpSession session) {	
		  System.out.println("first"+repVo); 
		   service.insertReply(repVo);
		  return"redirect:/insertReplyForm/"+repVo.getBrdNo();
	}
	
	@RequestMapping("/deleteReply")
	public String deleteReply() {				
		return "reply/replyForm";
	}

	@RequestMapping("/deleteReplyForm/{brdNo}/{repNo}")
	public String deleteReplyForm(@PathVariable("repNo") int repNo,@PathVariable("brdNo") int brdNo) {		
		service.deleteReplyForm(repNo);	
		System.out.println("repNo" +repNo);
		return "redirect:/insertReplyForm/{brdNo}";
	}
	
}
