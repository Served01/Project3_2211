package ezen.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.Bk_Bean;
import ezen.store.service.Bk_Service;

@Controller
@RequestMapping("/book")
public class Bk_Controller {

	@SuppressWarnings("unused")
	@Autowired
	private Bk_Service bk_Service;
	
	@GetMapping("/Bk_insert")
	public String Bk_insert(@ModelAttribute("bk_Bean") Bk_Bean insert_bk_Bean,
						@RequestParam("bk_number") int bk_number) {
		
		// 어떤 게시판이냐?
		insert_bk_Bean.setBk_number(bk_number);		
		
		return "book/Bk_insert";
	}
	
	@PostMapping("/Bk_insert_pro")
	public String Bk_insert_pro(@Validated@ModelAttribute("insert_bk_Bean") Bk_Bean insert_bk_Bean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "book/Bk_insert";
		}
		// upload 처리 
		Bk_Service.add_bk_info(insert_bk_Bean);
		
		return "book/Bk_insert_success";
	}
}
