package ezen.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import ezen.store.beans.Bk_Bean;
import ezen.store.service.Bk_Service;

@Controller
public class Bk_Controller {

	/* @GetMapping("/main")
	 * @ : Annotation 을 이용한다는 것은 비지니스 로직에만 개발자가 전념하도록 유도하는 것 입니다.
	 *  기존에는 객체 관리를 개발자가 했는데, 그런데 스프링에서는 스프링프레임워크에서 객체를 생성하고 관리 합니다.
	 */
	
	
	@Autowired
	private Bk_Service bk_Service;
	
	@GetMapping("/book/Bk_insert")
	public String bk_insert(@ModelAttribute("insert_bk_Bean") Bk_Bean insert_bk_Bean) {
		
		return "book/Bk_insert";
	}
	
	@PostMapping("/book/Bk_insert_pro")
	public String insert_pro(@ModelAttribute("insert_bk_Bean") Bk_Bean insert_bk_Bean) {

		// upload 처리 
		bk_Service.addBk_info(insert_bk_Bean);
		
		return "book/Bk_insert_success";
	}
	
	@GetMapping("/not_write")
	public String not_write() {
		return "board/not_write";
	}
		
}
