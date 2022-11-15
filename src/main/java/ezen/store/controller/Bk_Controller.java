package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.Bk_Bean;
import ezen.store.beans.Rv_Bean;
import ezen.store.service.Bk_Service;


@Controller
@RequestMapping("/book")
public class Bk_Controller {

	@Autowired
	private Bk_Service BkService;

	// 책정보 입력 컨트롤러
	@GetMapping("/BkInsert")
	public String BkInsert(@ModelAttribute("InsertBkBean") Bk_Bean InsertBkBean) {

		return "book/Bk_insert";
	}

	// 책정보 입력 컨트롤러
	@PostMapping("/BkInsertPro")
	public String InsertPro(@Validated @ModelAttribute("InsertBkBean") Bk_Bean InsertBkBean, BindingResult result) {

		if (result.hasErrors()) {
			return "book/Bk_insert";
		}
		// upload 처리
		BkService.addBkInfo(InsertBkBean);

		return "book/Bk_insert_success";
	}

	@GetMapping("/BkList")
	public String BkList(@RequestParam("bk_local") String bk_local, 
			@RequestParam("bk_genre") String bk_genre,
			Model model) {

		
		model.addAttribute("bk_local", bk_local);
		model.addAttribute("bk_genre", bk_genre);
		
		List<Bk_Bean> BkList = BkService.getBkList(bk_local, bk_genre);
		model.addAttribute("BkList", BkList);
		
		return "book/Bk_list";
	}

	@GetMapping("/BkSelect")
	public String BkSelect(@RequestParam("bk_number") int bk_number,
							Model model) {
		 
		 model.addAttribute("bk_number", bk_number);

		 Bk_Bean ReadScoreBean = BkService.getBkScore(bk_number);
		 model.addAttribute("ReadScoreBean", ReadScoreBean);

		 Bk_Bean ReadBkBean = BkService.getBkInfo(bk_number);
		 model.addAttribute("ReadBkBean", ReadBkBean);
		 
		return "book/Bk_select";
	}
	
	// 책정보 수정 페이지 컨트롤러
	@GetMapping("/BkUpdate")
	public String bkUpdate(@RequestParam("bk_number") int bk_number,
							Model model) {
		
		Bk_Bean updateBkBean = BkService.getBkInfo(bk_number);
		model.addAttribute("updateBkBean", updateBkBean);
		
		
		return "book/Bk_update";
	}

	// 책정보 수정 기능 컨트롤러
	@PostMapping("/BkUpdatePro")
	public String bkUpdatePro(@Validated @ModelAttribute("updateBkBean") Bk_Bean updateBkBean, BindingResult result) {
		
		if (result.hasErrors()) {
		return "book/Bk_update";
		}
		
		BkService.updateBook(updateBkBean);
		
		return "book/Bk_update_success";
	}

}
