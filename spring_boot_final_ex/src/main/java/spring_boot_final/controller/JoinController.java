package spring_boot_final.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring_boot_final.model.JoinVO;
import spring_boot_final.service.JoinService;


@Controller
public class JoinController {
    @Autowired
	JoinService service;
    


	@RequestMapping("/joinForm")
	public String joinForm() {
		return "/member/joinForm";
	}


    @ResponseBody
	@RequestMapping("/memIdCheck")
	public String memIdCheck(@RequestParam String memId) {
		String memId_result=service.memIdCheck(memId);  
		String result="use";
		System.out.println(memId_result);
		if(memId_result == null) { 
			result="no_use";
		}else result="use";
		
		return result;
	}

    @RequestMapping("/member/insertMember")
	public String insertMember(JoinVO vo) {
		service.insertMember(vo);
		return "redirect:/";
	}
    
 	@RequestMapping("/memDeleteForm")
 	public String memDeleteForm() {
		return "/member/memDeleteForm";
 	}

 	@ResponseBody
 	@RequestMapping("/member/memberDelete")
 	public int memberDelete(JoinVO vo, HttpSession session)
 	{
 		int result = service.memberDelete(vo);
 		if(result != 0){
 			session.invalidate();
 			return result;
 		}else{
 			return 0;
 		}
 		
 	}
 	

	@RequestMapping("/deleteMember")
	public String deleteMember(String memId) {
		service.deleteMember(memId);
		return "member/memberList";
	}

	@RequestMapping("/memUpdateForm/{memId}")
	public String memberInfo(@PathVariable String memId, Model model) {
		
		JoinVO mem = service.memberInfo(memId);
		model.addAttribute("mem", mem);
		
		return "member/memUpdateForm";
	}
	
	// 정보 수정 : 수정된 정보 DB에 저장
	@RequestMapping("/member/memberUpdate")
	public String memberUpdate(JoinVO memId) {
		service.memberUpdate(memId);		
		return "redirect:/";
	}
	
	@RequestMapping("/consentForm")
	public String consentForm() {
		return "/member/consentForm";
	}
}
