package com.kdn.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kdn.model.domain.Board;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;
import com.kdn.model.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	
	// header_nav.jsp
	@RequestMapping(value = "board.do", method = RequestMethod.GET)
	public String board(int pageNo, PageBean pb, Model model) {
		List<Board> bList = boardService.searchAll(pb);
				
		pb.setTotal(boardService.getCount()); // 총 게시글 개수
		pb.setPageNo(pageNo);
		
		int totalPage = pb.getTotalPage(); // 총 페이지 개수
		
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("bList", bList);
		model.addAttribute("content", "board_content");
		
		return "board/board";
	}
	
	// board_content.jsp
	@RequestMapping(value = "boardSearch.do", method = RequestMethod.GET)
	public String boardSearch(int boardno, int pageNo, Model model) {		
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("board", boardService.search(boardno));
		model.addAttribute("content", "board_search");
		
		return "board/board";
	}
	
	@RequestMapping(value = "writeForm.do", method = RequestMethod.GET)
	public String writeForm(int pageNo, Model model) {
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("content", "board_writeForm");
		
		return "board/board";
	}
	
	// board_writeForm.jsp
	@RequestMapping(value = "board_write.do", method = RequestMethod.POST)
	public String board_write(Board board) {
		boardService.insert(board);
			
		return "redirect:board.do?pageNo=1";
	}
	
	//게시글 삭제
	@RequestMapping(value= "boardDelete.do", method = RequestMethod.GET)
	public String boardDelete(HttpServletRequest request, Model model){
		
		String boardno = request.getParameter("boardno");
		System.out.println(boardno);
		
		int boardno1 = Integer.parseInt(boardno);
		boardService.delete(boardno1);
		
		return "redirect:board.do?pageNo=1";
	}
}
