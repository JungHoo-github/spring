package spring_boot_final.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring_boot_final.model.MemberVO;
import spring_boot_final.service.MemberService;


@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	@RequestMapping("/main")
	public String main() {
		return "/main";
	}
	@RequestMapping("/offlineMap")
	public String offlineMap() {
		return "map/offlineMap";
	}
	
	@RequestMapping("/product/cartList")
	public String cartList() {
		return "productInfo/cartListView";
	}
	
	//로그인 폼으로 가기
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	
	//로그인
	@ResponseBody
	@RequestMapping("/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param,
											   HttpSession session) {
		System.out.println("param :" + param);
		// 로그인 체크 결과
		MemberVO vo = service.loginCheck(param);
		System.out.println("vo :" + vo);
		String result = "fail";
		
		
		if(vo != null) {
			//로그인 성공하면 세션 변수 지정
			session.setAttribute("sno", vo.getMemNo());
			session.setAttribute("sid", vo.getMemId());
			result = "success";
		}else {
			System.out.println("값을 받지 못 하였습니다.");
		}
		
		return result;
	}
	
	//로그아웃
	@RequestMapping("/logout")
	public String logout( HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	// 회원가입
	@RequestMapping("/joinForm")
	public String joinForm() {
		
		return "/member/joinForm";
	}
	

	@ResponseBody
	@RequestMapping(value = "/memIdCheck")
	public String memIdCheck(@RequestBody String paramData) {

		 System.out.println(paramData);
		/* JSONObject json = new JsonObject(paramData) */
		String checkVar = "no_use";

		String memId_result = service.memIdCheck(paramData);
		
		if(memId_result != null) {
			// System.out.println("use : " + memId_result);
			checkVar = "use";
		}
		return checkVar;
	}

	//마이페이지
	@RequestMapping("/myPage/{memNo}")
	public String myPage(@PathVariable String memNo, Model model ) {
		
		/* System.out.println("memNo" + memNo); */
		
		MemberVO mem = service.myPage(Integer.parseInt(memNo));
		model.addAttribute("mem",mem);

		return "member/mypage";
	}
	//마이페이지폼으로 
	@RequestMapping("/updateMyPageForm/{memNo}")
	public String updateMyPage(@PathVariable String memNo,Model model) {
		MemberVO mem = service.myPage(Integer.parseInt(memNo));
		model.addAttribute("mem", mem);
		
		return "member/updateMyPageForm";
	}
	
	//마이페이지 수정 결과 db에 저장
	@RequestMapping("/updateMyPage")
	public String updateMyPage(HttpServletRequest request,MemberVO mem) {
		System.out.println(mem);
		service.updateMyPage(mem);
		String referer = (String)request.getHeader("Referer");

		return "redirect:" + referer;
	}
	 
	

	@RequestMapping("/deleteMyPageForm/{memNo}")
	public String deleteReplyForm(@PathVariable("memNo") int memNo) {		
		service.deleteMyPageForm(memNo);	
		System.out.println("memNo" +memNo);
		return "redirect:/logout";
	}
	
	
}
