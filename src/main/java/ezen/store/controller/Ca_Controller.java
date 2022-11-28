package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import ezen.store.beans.Ca_Bean;
import ezen.store.service.Ca_Service;

@Controller
@RequestMapping("/cart")
public class Ca_Controller {
	
	@Autowired
	private Ca_Service ca_Service;
	
	
	
	@GetMapping("/cart_info")
	public String cart_info(@SessionAttribute("mb_id") String ca_mbid, Model model) {
		

		
		List<Ca_Bean> infoCa_Bean = ca_Service.getCartInfo(ca_mbid);
		model.addAttribute("infoCa_Bean",infoCa_Bean);
		
		
		return "cart/cart_info";
		
	}
	
	
	
	
	
	
	
	
}
