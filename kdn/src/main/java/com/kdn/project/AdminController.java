package com.kdn.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kdn.model.domain.Accident;
import com.kdn.model.domain.Car;
import com.kdn.model.domain.Member;
import com.kdn.model.domain.PageBean;
import com.kdn.model.domain.Rent;
import com.kdn.model.domain.Reservation;
import com.kdn.model.domain.Return;
import com.kdn.model.service.CarService;
import com.kdn.model.service.MemberService;

@Controller
public class AdminController {
	@Autowired
	MemberService ms;
	@Autowired
	CarService carService;
	
	// adminPage_sidebar.jsp
	@RequestMapping(value = "memberContent.do", method = RequestMethod.GET)
	public String memberContent(int pageNo, PageBean pb, Model model) {
		List<Member> mList = ms.searchAll(pb);
		
		pb.setTotal(ms.getCount()); // 총 게시글 개수
		pb.setPageNo(pageNo);
		
		int totalPage = pb.getTotalPage(); // 총 페이지 개수
		
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("mList", mList);
		model.addAttribute("content", "member_content");
		
		return "adminPage/adminPage";
	}
	
	// member_content.jsp
	@RequestMapping(value = "deleteMember.do", method = RequestMethod.POST)
	public String deleteMember(HttpServletRequest request) {
		String[] dList = request.getParameterValues("check");
		
		for(int i=0; i<dList.length; i++){			
			ms.delete(dList[i]);
		}		
		
		return "redirect:memberContent.do?pageNo=1";
	}

	// adminPage_sidebar.jsp 반납관리
	@RequestMapping(value = "returnContent.do", method = RequestMethod.GET)
	public String returnContent(Model model) {
		List<Car> rList = carService.reserveSearch("대여중");
		
		model.addAttribute("rList", rList);
		model.addAttribute("content", "returnConfirm_content");
		
		return "adminPage/adminPage";
	}
	
	// adminPage_sidebar.jsp 대여 관리
	@RequestMapping(value = "rentContent.do", method = RequestMethod.GET)
	public String rentContent(Model model) {
		List<Car> rList = carService.reserveSearch("예약완료");
	
		model.addAttribute("rList", rList);
		model.addAttribute("content", "rentConfirm_content");
		
		return "adminPage/adminPage";
	}
	
	// adminPage_sidebar.jsp 예약 관리
	@RequestMapping(value = "reserveContent.do", method = RequestMethod.GET)
	public String reserveContent(Model model) {
		List<Car> rList = carService.reserveSearch("예약대기");
		
		model.addAttribute("rList", rList);
		model.addAttribute("content", "reserveConfirm_content");
		
		return "adminPage/adminPage";
	}
	
	// adminPage_sidebar.jsp 예약확인으로 상태 변경
	@RequestMapping(value = "reserveConfirm.do", method = RequestMethod.POST)
	public String reserveConfirm(HttpServletRequest request, Model model) {
		String[] rList = request.getParameterValues("check");

		
		for(int i=0; i<rList.length; i++){	
			System.out.println(rList[i]);
			carService.reserveConfirm(Integer.parseInt(rList[i]));
		}		
		
		return "redirect:reserveContent.do";
	}
	
	// adminPage_sidebar.jsp 대여 중으로 상태 변경
	@RequestMapping(value = "rentContent.do", method = RequestMethod.POST)
	public String rentContent(HttpServletRequest request, Model model) {
		String[] rList = request.getParameterValues("check");

		
		for(int i=0; i<rList.length; i++){	
			System.out.println(rList[i]);
			carService.renting(Integer.parseInt(rList[i]));
		}		
		
		return "redirect:rentContent.do";
	}
	
	// adminPage_sidebar.jsp 사고 관리
	@RequestMapping(value = "accidentContent.do", method = RequestMethod.GET)
	public String accidentContent(Model model) {
		List<Accident> aList = carService.accidentSearch();
		
		model.addAttribute("aList", aList);
		model.addAttribute("content", "accident_content");
		
		return "adminPage/adminPage";
	}
	
	// adminPage_sidebar.jsp 반납 대기 신청 관리
	@RequestMapping(value = "renewContent.do", method = RequestMethod.GET)
	public String renewContent(Model model) {
		List<Car> rList = carService.reserveSearch("반납대기"); 
		
		model.addAttribute("rList", rList);
		model.addAttribute("content", "renewConfirm_content");
		
		return "adminPage/adminPage";
	}
	
	//사고 처리 accident_content.jsp
	@RequestMapping(value= "accidentUpdate.do", method = RequestMethod.GET)
	public String accidentUpdate(HttpServletRequest request, Model model, int carno){
		System.out.println(carno);
			
		carService.accidentUpdate(carno);
		
		return "redirect:accidentContent.do";
	}
}
