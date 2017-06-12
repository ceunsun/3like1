package com.kdn.project;

import java.util.List;

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
import com.kdn.model.domain.Return;
import com.kdn.model.service.CarService;
import com.kdn.model.service.MemberService;

@Controller
public class CarController {
	@Autowired
	CarService carService;
	
	// adminPage_sidebar.jsp
	@RequestMapping(value = "available.do", method = RequestMethod.GET)
	public String available(int pageNo, PageBean pb, Model model) {
		pb.setTotal(carService.getCount()); // 총 게시글 개수
		pb.setPageNo(pageNo);
		pb.setInterval(5);
		
		List<Car> cList = carService.availableSearch(pb);
		
		for(Object obj : cList){
			System.out.println(obj);
		}
				
		int totalPage = pb.getTotalPage(); // 총 페이지 개수
		
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("cList", cList);
		
		return "include/search_modal";
	}
	

}
