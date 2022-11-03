package kr.co.ezen.controller;

import org.hibernate.validator.internal.util.stereotypes.Lazy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.ezen.beans.Mb_Bean;


@Controller
public class HomeController {
	
	@SuppressWarnings("unused")
	@Autowired
	@Lazy
	private Mb_Bean loginUserDataBean;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		System.out.println("home");
				
		return "redirect:/index";
	}
	
}
