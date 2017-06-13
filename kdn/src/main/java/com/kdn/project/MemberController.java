package com.kdn.project;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kdn.model.domain.Car;
import com.kdn.model.domain.Member;
import com.kdn.model.service.CarService;
import com.kdn.model.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService ms;
	
	@Autowired
	CarService carService;
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String login(String memberno, String pwd, HttpSession session){
		Member find = null;
		
		find = ms.search(memberno);
		
		System.out.println(find);
		
		if(find.getMemberno().equals(memberno) && find.getPwd().equals(pwd)){
			String name = find.getName();
			int penalty = find.getPenalty();
			String dept = find.getDept();
			
			session.setAttribute("memberno", memberno);
			session.setAttribute("name", name);
			session.setAttribute("dept", dept);
			session.setAttribute("penalty", penalty);
		}
		
		return "home";
	}
	
	@RequestMapping(value="logout.do", method=RequestMethod.GET)
	public String logout(HttpSession session){
		session.removeAttribute("name");
		
		return "home";
	}
	
	@RequestMapping(value="myPage.do", method=RequestMethod.GET)
	public String myPage(HttpSession session, Model model){
		
		String memberno = (String) session.getAttribute("memberno");
		
		model.addAttribute("member", ms.search(memberno));
		
		return "myPage/myPage";
	}
	
	@RequestMapping(value = "updateForm.do", method = RequestMethod.GET)
	public String updateForm(HttpSession session, Model model) {
		
		String memberno = (String) session.getAttribute("memberno");
		
		model.addAttribute("member", ms.search(memberno));
		model.addAttribute("content", "updateForm_content");
		
		return "myPage/myPage";
	}

	@RequestMapping(value = "updateMember.do", method = RequestMethod.POST)
	public String updateMember(Member member, HttpSession session, Model model) {
		ms.update(member);
		
		String name = (String) session.getAttribute("name");
		String mName = member.getName();
		
		if(!name.equals(mName)){
			session.setAttribute("name", mName);
		}
				
		return "redirect:myPage.do";
	}
	
	//rsvInfoPage_content.jsp
	@RequestMapping(value= "rsvInfo.do", method = RequestMethod.GET)
	public String rsvInfo(HttpSession session, Model model){
		List<Car> rList = carService.rentSearch();
		String memberno = (String) session.getAttribute("memberno");
		System.out.println(memberno);
		
		model.addAttribute("reservation", ms.my_reservation(memberno));
		model.addAttribute("content", "rsvInfoPage_content");
		
		return "myPage/myPage";
		
	}
	
	//returnPage_content.jsp
	@RequestMapping(value= "returnPage.do", method = RequestMethod.GET)
	public String returnPage(HttpSession session, Model model){
		
		String memberno = (String) session.getAttribute("memberno");
		System.out.println(memberno);
		
		model.addAttribute("rent", ms.my_return(memberno));
		model.addAttribute("content", "returnPage_content");
		
		return "myPage/myPage";
		
	}
}
