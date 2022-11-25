package ezen.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ezen.store.beans.Search_Bean;


@Controller
@RequestMapping("/Main")
public class Ma_Controller {

	
	@GetMapping("/header")
	public String header(@ModelAttribute("searchBean") Search_Bean searchBean) {

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
