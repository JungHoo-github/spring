package spring_boot_final.service;

import java.util.ArrayList;
import java.util.List;

import spring_boot_final.model.BoardVO;
import spring_boot_final.model.PagingVO;

public interface IBoardService {
	ArrayList<BoardVO> boardList();
	void insertBoard(BoardVO board);
	void updateBoard(BoardVO board);
	void deleteBoard(String brdNo);
	ArrayList<BoardVO> selectTag();
	BoardVO detailView(String brdNo);
	ArrayList<BoardVO> selectTagList(String tagName);
	// 페이징
	public int countBoard(); // 게시물 총 개수
	public List<BoardVO> selectBoard(PagingVO pagingvo); // 페이징 처리 게시글 조회
		
	ArrayList<BoardVO> myBoard(int brdNo);
	void deleteBoard(int brdNo);
	
	void recommendUp(int brdNo);
}