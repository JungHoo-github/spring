package spring_boot_final.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring_boot_final.dao.IRecipeDAO;
import spring_boot_final.model.RecipeVO;

@Service
public class RecipeService implements IRecipeService {
	@Autowired
	@Qualifier("IRecipeDAO")
	IRecipeDAO dao;

	@Override
	public RecipeVO recipeinfo(int rcpNo) {
		return dao.recipeinfo(rcpNo);
	}
	
	@Override
	public RecipeVO recipeContent(String rcpContent) {
		return dao.recipeContent(rcpContent);
	}
	
	@Override
	public ArrayList<RecipeVO> recipeinfoRoot(int rcpNo) {
		return dao.recipeinfoRoot(rcpNo);
	}

}
