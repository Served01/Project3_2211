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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ezen.store.beans.Rv_Bean;
import ezen.store.service.Rv_Service;

@Controller
@RequestMapping("/review")
public class Rv_Controller {
	
	@Autowired
	private Rv_Service rvService;
	
	
	@GetMapping("/list")
	public String list(@RequestParam("rv_bknumber") int rv_bknumber, Model model) {
		
		// Review 목록 열기
		
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
	
	
	@PostMapping("/review/insertPro")
	public String insertPro(@ModelAttribute("insertRvBean") Rv_Bean insertRvBean,
							BindingResult result) {
		
		// insert 처리
		if(result.hasErrors()) {
			return "review/Rv_insert_fail";
		}
		
		rvService.insertReview(insertRvBean);
		
		return "review/Rv_insert_success";
		
	}
	
	
	@GetMapping("/review/update")
	public String update(@RequestParam("rv_number") int rv_number, Model model) {
		
		// update 페이지 열기
		Rv_Bean updateRvBean = rvService.updatecheckRvBean(rv_number);
		model.addAttribute("updateRvBean",updateRvBean);
		
		return "review/Rv_update";
	}
	
	
	@PostMapping("/review/updatePro")
	public String updatePro(@ModelAttribute("updateRvBean") Rv_Bean updateRvBean,
							BindingResult result) {
		
		if(result.hasErrors()) {
		return "review/Rv_update_fail";
		}
		
		rvService.updateReview(updateRvBean);
		
		return "review/Rv_update_success";
	}
	
	
	@GetMapping("/review/deletePro")
	public String deletePro(@RequestParam("rv_number") int rv_number,
							BindingResult result) {
		
		if(result.hasErrors()) {
		return "review/Rv_delete_fail";
		}
		rvService.deleteReview(rv_number);
		
		return "review/Rv_delete_success";
	}
	
	
}
