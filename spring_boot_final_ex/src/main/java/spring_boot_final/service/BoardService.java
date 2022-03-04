package spring_boot_final.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import spring_boot_final.dao.IBoardDAO;
import spring_boot_final.model.BoardVO;
import spring_boot_final.model.PagingVO;

@Service
public class BoardService implements IBoardService {
	@Autowired
	@Qualifier("IBoardDAO")
	IBoardDAO dao;

	@Override
	public ArrayList<BoardVO> boardList() {
		return dao.boardList();
	}
	
	@Override
	public void insertBoard(BoardVO board) { 
		dao.insertBoard(board);
	}
	
	@Override
	public BoardVO detailView(String brdNo) { 
		return dao.detailView(brdNo);
	}
	@Override
	public void deleteBoard(String brdNo) { 
		dao.deleteBoard(brdNo);
	}
	@Override
	public void updateBoard(BoardVO board) {
		// TODO Auto-generated method stub
		dao.updateBoard(board);
	}
	@Override
	public ArrayList<BoardVO> selectTag() {
		return dao.selectTag();
	}
	
	@Override
	public ArrayList<BoardVO> selectTagList(String tagName) {
		return dao.selectTagList(tagName);
	}
	
	  // 페이징
	  
	  @Override public int countBoard() { 
		  return dao.countBoard(); 
		  }
	  
	  @Override public List<BoardVO> selectBoard(PagingVO pagingvo) {
	  
	  
	  return dao.selectBoard(pagingvo); 
	  }
	@Override
	public ArrayList<BoardVO> myBoard(int brdNo) {
		// TODO Auto-generated method stub
		return dao.myBoard(brdNo);
	}
	@Override
	public void deleteBoard(int brdNo) {
		// TODO Auto-generated method stub
		dao.deleteBoard(brdNo);
	}
	
	@Override
	public void recommendUp(int brdNo){
		 dao.recommendUp(brdNo);
	}
}