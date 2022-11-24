package ezen.store.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import ezen.store.beans.Search_Bean;


@Controller
@RequestMapping("/Main")
public class Ma_Controller {

	
	@GetMapping("/header")
	public String header(@ModelAttribute("searchBean") Search_Bean searchBean,
						 HttpServletRequest request) {

		HttpSession session = request.getSession();
		
		Object mb_id = session.getAttribute("mb_id");
		
		if(mb_id.equals(null)) {
			System.out.println("값이 없음");
		}
		
		System.out.println(mb_id);
		
		
		
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
