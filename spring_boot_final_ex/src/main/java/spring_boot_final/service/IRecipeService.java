package spring_boot_final.service;

import spring_boot_final.model.RecipeVO;

public interface IRecipeService {
	RecipeVO recipeinfo(int rcpNo);	//해당 물품 레시피 보여주는 페이지로 이동
	RecipeVO recipeContent(String rcpContent);

}
