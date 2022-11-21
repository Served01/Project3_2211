package ezen.store.controller;

import java.util.ArrayList;
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
import ezen.store.beans.Bk_Number;
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
	
	// 장르와 지역에 맞춘 책리스트
	@GetMapping("/BkList")
	public String BkList(
			@RequestParam("bk_local") String bk_local, 
			@RequestParam("bk_genre") String bk_genre,
			@RequestParam("mb_id") String mb_id,
			Model model) {

		model.addAttribute("bk_local", bk_local);
		model.addAttribute("bk_genre", bk_genre);
		model.addAttribute("mb_id", mb_id);
		
		List<Bk_Number> bkNumList = BkService.getBkNumList(bk_local, bk_genre);
		
		
		List<Bk_Bean> bkListBean = new ArrayList<Bk_Bean>();
		
		for(int i=0; i<bkNumList.size(); i++) {
			
			Bk_Number bk_numbers = bkNumList.get(i);
			int bk_number = bk_numbers.getBk_number();
			
			Bk_Bean bkInfoBean = BkService.getBkInfo(bk_number);
			double avg_score = BkService.getBkScore(bk_number);
			
			bkInfoBean.setAvg_score(avg_score);
			
			bkListBean.add(i, bkInfoBean);
		}
		
		model.addAttribute("bkListBean", bkListBean);
		
		return "book/Bk_list";
	}

	@GetMapping("/BkSelect")
	public String BkSelect(@RequestParam("bk_number") int bk_number,
							Model model) {
		 
		 model.addAttribute("bk_number", bk_number);

		 double ReadScore = BkService.getBkScore(bk_number);
		 model.addAttribute("ReadScore", ReadScore);

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
	
	// 책정보 삭제(수정) 기능 컨트롤러
	@GetMapping("/BkDeletePro")
	public String bkDeletePro(@ModelAttribute("bk_number") int bk_number,
							BindingResult result) {		
		
		BkService.deleteBook(bk_number);
		
		if(result.hasErrors()) {
		return "book/Bk_delete_fail";
		}
		
		return "book/Bk_delete_success";
	}

}
