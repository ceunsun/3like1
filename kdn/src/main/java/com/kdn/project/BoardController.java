package com.kdn.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kdn.model.domain.Accident;
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
	
	
	@RequestMapping(value = "updateBoardForm.do", method = RequestMethod.GET)
	public String updateBoardForm(HttpServletRequest request, HttpSession session, Model model, int pageNo) {
		//본인의 글인 경우
		if(request.getParameter("memberno").equals(session.getAttribute("memberno"))){
			String boardno = request.getParameter("boardno");
			
			model.addAttribute("pageNo", pageNo);
			model.addAttribute("board", boardService.search(Integer.parseInt(boardno)));
			model.addAttribute("content", "board_update");
			return "board/board";
			
		}else{ //남의 글인 경우,,, 팝업을 띄워야할까
			return "redirect:board.do?pageNo=1";
		}
	}
	
	// board_update.jsp
	@RequestMapping(value = "updateBoard.do", method = RequestMethod.POST)
	public String updateBoard(Board board, HttpSession session, Model model) {
		boardService.update(board);
		
		return "redirect:board.do?pageNo=1";
	}
	
	
	//게시글 삭제
	@RequestMapping(value= "boardDelete.do", method = RequestMethod.GET)
	public String boardDelete(HttpServletRequest request, Model model){
		
		String boardno = request.getParameter("boardno");
		
		int boardno1 = Integer.parseInt(boardno);
		boardService.delete(boardno1);
		
		return "redirect:board.do?pageNo=1";
	}
	
	
	@RequestMapping(value = "accboard.do", method = RequestMethod.GET)
	public String accboard(int pageNo, PageBean pb, Model model) {
		List<Accident> aList = boardService.accsearchAll(pb);
				
		pb.setTotal(boardService.accgetCount()); // 총 게시글 개수
		pb.setPageNo(pageNo);
		
		int totalPage = pb.getTotalPage(); // 총 페이지 개수
		
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("aList", aList);
		model.addAttribute("content", "accboard_content");
		
		return "board/accboard";
	}
	
	
	@RequestMapping(value = "accboardSearch.do", method = RequestMethod.GET)
	public String accboardSearch(int accidentno, int pageNo, Model model) {		
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("accident", boardService.accsearch(accidentno));
		model.addAttribute("content", "accboard_search");
		
		return "board/accboard";
	}
	
	
	@RequestMapping(value = "accwriteForm.do", method = RequestMethod.GET)
	public String accwriteForm(int pageNo, Model model) {
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("content", "accboard_writeForm");
		
		return "board/accboard";
	}

	// accboard_writeForm.jsp
	@RequestMapping(value = "accboard_write.do", method = RequestMethod.POST)
	public String accboard_write(Accident accident) {
		System.out.println("accident write>>>>>>>>>>>>>>>>>@controller"+accident);
		boardService.accinsert(accident); 
			
		return "redirect:accboard.do?pageNo=1";
	}
	
	
	@RequestMapping(value = "accupdateBoardForm.do", method = RequestMethod.GET)
	public String accupdateBoardForm(HttpServletRequest request, HttpSession session, Model model, int pageNo) {
		//본인의 글인 경우
		if(request.getParameter("memberno").equals(session.getAttribute("memberno"))){

			String accidentno = request.getParameter("accidentno");
			
			model.addAttribute("pageNo", pageNo);
			model.addAttribute("accident", boardService.accsearch(Integer.parseInt(accidentno)));
			model.addAttribute("content", "accboard_update");
			return "board/accboard";
			
		}else{ //남의 글인 경우,,, 팝업을 띄워야할까
			return "redirect:accboard.do?pageNo=1";
		}
	}
	
	// accident_update.jsp
	@RequestMapping(value = "accupdateBoard.do", method = RequestMethod.POST)
	public String accupdateBoard(Accident accident) {
		boardService.accupdate(accident);
	
		return "redirect:accboard.do?pageNo=1";
	}
	
	//게시글 삭제
	@RequestMapping(value= "accboardDelete.do", method = RequestMethod.GET)
	public String accboardDelete(HttpServletRequest request, Model model){
		
		String accidentno = request.getParameter("accidentno");
		
		int accidentno1 = Integer.parseInt(accidentno);
		boardService.accdelete(accidentno1);
		
		return "redirect:accboard.do?pageNo=1";
	}
	
}
