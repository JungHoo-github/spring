package spring_boot_final.dao;

import java.util.ArrayList;

import spring_boot_final.model.RecipeVO;

public interface IRecipeDAO {
	
	RecipeVO recipeinfo(int rcpNo);	//해당 물품 레시피 보여주는 페이지로 이동
	RecipeVO recipeContent(String rcpContent);
	ArrayList<RecipeVO> recipeinfoRoot(int rcpNo);

}
