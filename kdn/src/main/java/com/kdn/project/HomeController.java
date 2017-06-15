package com.kdn.project;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kdn.model.domain.Car;
import com.kdn.model.service.CarService;
import com.kdn.model.service.MemberService;
import com.sun.org.apache.bcel.internal.generic.SIPUSH;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	MemberService memberService;
	@Autowired
	CarService carService;
	
	/**
	 * home
	 * @throws ParseException 
	 */	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(){
		return "home";
	}
	
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String returnHome() {		
		return "home";
	}
	
	@RequestMapping(value = "/search.do", method = RequestMethod.POST)
	public String searchResult() {		
		return "home";
	}
	
	/**
	 * about
	 */	
	@RequestMapping(value = "about.do", method = RequestMethod.GET)
	public String about() {
		
		return "about/about";
	}
	
	/**
	 * contact
	 */		
	@RequestMapping(value = "contact.do", method = RequestMethod.GET)
	public String contact() {
		
		return "contact/contact";
	}
	
	@RequestMapping(value = "carModal.do", method = RequestMethod.GET)
	public String carModal(Model model, String carno) {
		System.out.println(Integer.parseInt(carno));
		Car c = carService.search(Integer.parseInt(carno));
		
		model.addAttribute("car", c);
		
		return "include/car_modal";
	}
	
	/**
	 * adminPage
	 */
	@RequestMapping(value = "adminPage.do", method = RequestMethod.GET)
	public String adminPage(Model model) {
		int reserveWait = carService.countEvent("예약대기");
		System.out.println(reserveWait);
		int reserveConfirm = carService.countEvent("대여 중");
		int returnWait = carService.countEvent("반납신청");
		int accidentConfirm = carService.countEvent("사고차량");
		
		model.addAttribute("reserveWait", reserveWait);
		model.addAttribute("reserveConfirm", reserveConfirm);
		model.addAttribute("returnWait", returnWait);
		model.addAttribute("accidentConfirm", accidentConfirm);
		
		return "adminPage/adminPage";
	}
}
