package ezen.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ezen.store.beans.Bk_Bean;
import ezen.store.service.Bk_Service;



@Controller
@RequestMapping("/book")
public class Bk_Controller {

	/* @GetMapping("/main")
	 * @ : Annotation 을 이용한다는 것은 비지니스 로직에만 개발자가 전념하도록 유도하는 것 입니다.
	 *  기존에는 객체 관리를 개발자가 했는데, 그런데 스프링에서는 스프링프레임워크에서 객체를 생성하고 관리 합니다.
	 */
	
	@Autowired
	private Bk_Service BkService;
	
	//책정보 입력 컨트롤러
	@GetMapping("/BkInsert")
	public String BkInsert(@ModelAttribute("InsertBkBean") Bk_Bean InsertBkBean) {
		
		return "book/Bk_insert";
	}
	
	//책정보 입력 컨트롤러
	@PostMapping("/BkInsertPro")
	public String InsertPro(@Validated@ModelAttribute("InsertBkBean") Bk_Bean InsertBkBean, BindingResult result) {

		if(result.hasErrors()) {
			return "book/Bk_insert";
		}
			// upload 처리 
			BkService.addBkInfo(InsertBkBean);
		
			return "book/Bk_insert_success";
	}
		
}
