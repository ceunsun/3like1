package com.kdn.project;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
public class CarController {
	@Autowired
	CarService carService;
	@Autowired
	MemberService memberService;
	
	// home_content.jsp
	@RequestMapping(value = "available.do", method = RequestMethod.POST)
	public String available(String car, String startdate, String enddate, Model model) {		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("startdate", startdate);
		map.put("enddate", enddate);
		map.put("carname", car);
		
		int total = carService.getCount(map);
		
		List<Car> cList = carService.availableSearch(map);
		
		model.addAttribute("total", total);
		model.addAttribute("cList", cList);
		model.addAttribute("startdate", startdate);
		model.addAttribute("enddate", enddate);
		
		return "home/available";
	}
	
	// available_content.jsp	
	@RequestMapping(value = "reserve.do", method = RequestMethod.POST)
	public String reserve(int carno, String startdate, String enddate, String place, HttpSession session, Model model) {		
		String memberno = (String) session.getAttribute("memberno");
		/*HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("memberno", memberno);
		map.put("penalty", 200);*/
		
		Reservation reservation = new Reservation(startdate, enddate, carno, memberno);
		
		System.out.println(reservation);
		System.out.println(place);
		
		carService.reserve(reservation);
		carService.reserveStatus(carno);
		/*memberService.getPenalty(map);
		
		Member m = memberService.search(memberno);
				
		session.setAttribute("penalty", (m.getPenalty()));*/
		
		return "redirect:home.do";
	}
	
	// myPage_sidebar.jsp
	@RequestMapping(value= "returnPage.do", method = RequestMethod.GET)
	public String returnPage(HttpSession session, Model model){
		String memberno = (String) session.getAttribute("memberno");
		
		List<Car> cList = memberService.searchReturn(memberno);
		
		System.out.println(memberService.searchReturn(memberno));
		model.addAttribute("cList", cList);			
		model.addAttribute("content", "returnPage_content");
			
		return "myPage/myPage";
			
	}
}
