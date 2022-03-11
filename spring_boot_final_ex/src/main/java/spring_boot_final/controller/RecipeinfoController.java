package spring_boot_final.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring_boot_final.model.ProductVO;
import spring_boot_final.model.RecipeVO;
import spring_boot_final.model.ReplyVO;
import spring_boot_final.service.RecipeService;
import spring_boot_final.service.ReplyService;

@Controller
public class RecipeinfoController {
	@Autowired
	RecipeService service;

	@Autowired
	ReplyService repService;

	@RequestMapping("/recipe/recipeinfoRoot/{rcpNo}")
	public String recipeinfoRoot(@PathVariable("rcpNo") int rcpNo, Model model) {
		ArrayList<RecipeVO> rcpList = service.recipeinfoRoot(rcpNo);
		model.addAttribute("rcpList", rcpList);

		return "recipe/recipeinfoRoot";
	}
	

	// 레시피 정보 페이지로 이동
	@RequestMapping("/recipe/recipeinfo/{rcpNo}")
	public String recipeinfo(@PathVariable int rcpNo,Model model, HttpSession session) {
		RecipeVO rcp = service.recipeinfo(rcpNo);
		model.addAttribute("rcp", rcp);
		
		return "recipe/recipeinfo";
	}
	
	//댓글
	@RequestMapping("/insertReplyForm/{repNo}")//댓글 
	public String insertReplyForm(@PathVariable String repNo, Model model, ReplyVO repVo) {
		System.out.println("repNo:" + repNo);
		ArrayList<ReplyVO> Rep = repService.insertReplyForm(Integer.parseInt(repNo));
		System.out.println("repNo2:" + Rep);
		model.addAttribute("repList", Rep);
		
		return "recipe/recipeinfo";
	}

	@RequestMapping("/insertReply")
	public String insertReply(ReplyVO repVo, HttpSession session) {
		System.out.println("first" + repVo);
		repService.insertReply(repVo);
		session.setAttribute("mno", repVo.getMemNo());
		System.out.println("mno");
		return "redirect:/insertReplyForm/" + repVo.getRcpNo();
	}

	@RequestMapping("/deleteReply")
	public String deleteReply() {
		return "recipe/recipeinfo";
	}

	@RequestMapping("/deleteReplyForm/{rcpNo}/{repNo}")
	public String deleteReplyForm(@PathVariable("repNo") int repNo, @PathVariable("rcpNo") int rcpNo) {
		repService.deleteReplyForm(repNo);
		System.out.println("repNo" + repNo);
		return "redirect:/insertReplyForm/{rcpNo}";
	}
	

}
