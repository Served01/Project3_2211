package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.Rv_Bean;
import ezen.store.service.Rv_Service;

@Controller
public class Rv_Controller {
	
	@Autowired
	private Rv_Service rvService;
	
	
	@GetMapping("/review/list")
	public String list(@RequestParam("rv_bknumber") int rv_bknumber, Model model) {
		
		// Review 목록 열기
		model.addAttribute("rv_bknumber", rv_bknumber);
		
		List<Rv_Bean> reviewlist = rvService.getRvList(rv_bknumber);
		model.addAttribute("reviewlist", reviewlist);
		
		return "review/Rv_list";
	}

	
	@GetMapping("/review/insert")
	public String insert(@ModelAttribute("insertRvBean") Rv_Bean insertRvBean,
						 @RequestParam("rv_bknumber") int rv_bknumber) {
		
		// insert 페이지 열기
		insertRvBean.setRv_bknumber(rv_bknumber);
	
		return "review/Rv_insert";
	}
	
	
	@PostMapping("/review/insert_pro")
	public String insertPro(@ModelAttribute("insertRvBean") Rv_Bean insertRvBean) {
		
		// insert 처리
		//return "review_insert_fail";
		
		rvService.insertReview(insertRvBean);
		
		return "review/Rv_insert_success";
	}
	
	
	@GetMapping("/review/update")
	public String update() {
		
		return "review/Rv_update";
	}
	
	
	@PostMapping("/review/update_pro")
	public String updatePro() {
		
		//return "review/Rv_update_fail";
		
		return "review/Rv_update_success";
	}
	
	
	@DeleteMapping("/review/delete_pro")
	public String deletePro() {
		
		//return "review/Rv_delete_fail";
		
		return "review/Rv_delete_success";
	}
	
	
}
