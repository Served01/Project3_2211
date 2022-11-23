package ezen.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/Main")
public class Ma_Controller {

	
	@GetMapping("/header")
	public String header() {

		return "include/header";
	}
	
	
	@GetMapping("/footer")
	public String footer() {

		return "include/footer";
	}

	@GetMapping("/center")
	public String center() {

		return "include/center";
	}
	

}
