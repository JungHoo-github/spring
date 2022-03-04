package spring_boot_final.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring_boot_final.model.BoardVO;
import spring_boot_final.model.PagingVO;
import spring_boot_final.service.BoardService;


@Controller
public class BoardController {
	@Autowired
	BoardService service;
	
	/*
	 * @RequestMapping("/BoardList") public String BoardList(Model model) {
	 * ArrayList<BoardVO> boardList = service.boardList();
	 * model.addAttribute("boardList",boardList); return "/board/BoardList"; }
	 */
	
	
	  @RequestMapping("/BoardList") 
	  public String BoardList(Model model, @RequestParam(value="nowPage", required=false)String nowPage, 
			  @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
	  
	  // 페이징 
	int total = service.countBoard(); 
	if (nowPage == null && cntPerPage ==null) { 
		nowPage = "1"; cntPerPage = "5"; 
		} else if (nowPage == null) {
	  nowPage = "1"; 
	  } else if (cntPerPage == null) { 
		  cntPerPage = "5"; 
		  }
	  System.out.println("total : "+total); 
	  PagingVO vo = new PagingVO(total,Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
	  
	  model.addAttribute("paging", vo);
	  model.addAttribute("boardList", service.selectBoard(vo));
		/*
		 * ArrayList<BoardVO> boardList =service.boardList();
		 * model.addAttribute("boardList",boardList);
		 */
	  return "/board/BoardList"; 
	  }
	 
	
	
	@RequestMapping("/insertForm")
	public String insertForm() {
		return "/board/insertForm";
	}
	
	@RequestMapping("/insertBoard")
	public String insertBoard(BoardVO board) {
		int idx1 = board.getBrdCon().indexOf("<img");
		int idx2 = board.getBrdCon().indexOf("\">");
		String Thumbnail = board.getBrdCon().substring(idx1, idx2+2);
		board.setBrdImg(Thumbnail);
		service.insertBoard(board);
		return "redirect:./BoardList";
	}
	
	@RequestMapping("/board/detailView/{brdNo}")
	public String detailView(@PathVariable String brdNo, Model model) {
		BoardVO board = service.detailView(brdNo);
		model.addAttribute("board", board);

		return "board/detailView";
	}
	@RequestMapping("/board/deleteBoard/{brdNo}")
	public String deleteProduct(@PathVariable String brdNo) {
		service.deleteBoard(brdNo);
		return "redirect:/BoardList";
	}
	
	
	
	@RequestMapping("/board/recommendUp/{brdNo}")
	public String recommendUp(@PathVariable int brdNo) {
		
		service.recommendUp(brdNo);
		System.out.println("brdRecommend");
		return "redirect:/board/detailView/{brdNo}";
	}
	
	
	
	@RequestMapping(value="/board/updateBoard/{brdNo}")
	public String updateBoard(@PathVariable  String brdNo, Model model) {
		BoardVO board = service.detailView(brdNo);
		model.addAttribute("board", board);
		return "board/updateForm";
	}
	@RequestMapping(value="/board/updateForm")
	public String updateBoard(BoardVO board){
		int idx1 = board.getBrdCon().indexOf("<img");
		int idx2 = board.getBrdCon().indexOf("\">");
		String Thumbnail = board.getBrdCon().substring(idx1, idx2+2);
		board.setBrdImg(Thumbnail);
		service.updateBoard(board);
		return "redirect:/BoardList";
	}
	@RequestMapping("/myBoard/{brdNo}")
	public String myBoard(@PathVariable String brdNo, Model model) {
		ArrayList<BoardVO> brdlist = service.myBoard(Integer.parseInt(brdNo));
		model.addAttribute("brdlist", brdlist);
		System.out.println(brdlist);
		return "/member/myBoard";
	}
	
	
	@RequestMapping("/reDirect")
	public String reDirect(HttpServletRequest request) {
		String referer = (String)request.getHeader("Referer");

		return "redirect:" + referer;
	}
	
	
	@ResponseBody
	@RequestMapping("/deleteBoard")
	public int deleteBoard(@RequestParam("chbox[]") ArrayList<String> chkArr) {
		System.out.println("delete" + chkArr);
		int result = 0;
		int brdNo=0;
		
		
		if(chkArr != null) {
			for(String i : chkArr) {
				brdNo = Integer.parseInt(i);
				service.deleteBoard(brdNo);
			}
			result = 1;
		}
		
		return result;
	}

	////////////////////////tag//////////////////////////////////////////
	
	@RequestMapping("/selectTag")
	public String selectTag(Model model) {
		ArrayList<BoardVO> selectTag = service.selectTag();
		model.addAttribute("selectTag",selectTag);
		return "/board/selectTag";
	}
	
	//@ResponseBody
	@RequestMapping("/selectTagList")
	public String selectTagList(@RequestParam("tagName") String tagName, Model model) {	
		ArrayList<BoardVO> selectTagList = service.selectTagList(tagName);
		model.addAttribute("selectTagList", selectTagList);
		
		return "/board/selectTagListResult";		
	}
	
}


/*
 * dao에 dao 인터페이스
 * 
 * model에 vo
 * 
 * service에 boardservice, iboardservice
 */