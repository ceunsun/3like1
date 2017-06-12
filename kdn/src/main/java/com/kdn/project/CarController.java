package com.kdn.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	// home_content.jsp
	@RequestMapping(value = "available.do", method = RequestMethod.POST)
	public String available(String car, String startdate, String enddate, PageBean pb, Model model) {		
		int pageNo=1;
		pb.setTotal(carService.getCount(car)); // 총 게시글 개수
		pb.setPageNo(pageNo);
		pb.setInterval(5);
		
		List<Car> cList = carService.availableSearch(car, pb);
		
		for(Object obj : cList){
			System.out.println(obj);
		}
				
		int totalPage = pb.getTotalPage(); // 총 페이지 개수
		
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("cList", cList);
		model.addAttribute("startdate", startdate);
		model.addAttribute("enddate", enddate);
		model.addAttribute("content", "home/available_content");
		
		return "home";
	}
	
	// available_content.jsp	
	@RequestMapping(value = "reserve.do", method = RequestMethod.POST)
	public String reserve(int carno, String startdate, String enddate, HttpSession session, Model model) {		
		String memberno = (String) session.getAttribute("memberno");
		
		Reservation reservation = new Reservation(startdate, enddate, carno, memberno);
		
		System.out.println(reservation);
		
		carService.reserve(reservation);
		
		return "redirect:home.do";
	}
}
