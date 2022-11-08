package ezen.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import ezen.store.beans.Dv_Bean;
import ezen.store.service.Dv_Service;

@Controller
public class Dv_Controller {
	
	@Autowired
	private Dv_Service dv_Service;
	
	@GetMapping("/delivery/Dv_insert")
	public String insert(@ModelAttribute("insertDv_Bean") Dv_Bean insertDv_Bean) {
				
		return "delivery/Dv_insert";
	}
	
	@PostMapping("/delivery/Dv_insert_pro")
	public String Dv_insert_pro(@Validated@ModelAttribute("insertDv_Bean") Dv_Bean insertDv_Bean) {
				
		dv_Service.addDvInfo(insertDv_Bean);
		
		return "delivery/Dv_insert_success";
	}

}

