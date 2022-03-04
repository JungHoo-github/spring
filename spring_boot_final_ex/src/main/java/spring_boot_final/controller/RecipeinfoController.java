package spring_boot_final.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring_boot_final.model.RecipeVO;
import spring_boot_final.service.RecipeService;

@Controller
public class RecipeinfoController {
	@Autowired
	RecipeService service;
	
	//상품 구매 페이지로 이동
	@RequestMapping("/recipe/recipeinfo/{rcpNo}")
	public String recipeinfo(@PathVariable int rcpNo, Model model ,HttpSession session) {
		RecipeVO rcp = service.recipeinfo(rcpNo);
		model.addAttribute("rcp", rcp);	
		
		return "recipe/recipeinfo";
	}


}
