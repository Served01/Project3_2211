package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.PageCountBean;
import ezen.store.beans.Wi_Bean;
import ezen.store.service.Wi_Service;

@Controller
@RequestMapping("/wish")
public class Wi_Controller {
	
	@Autowired
	private Wi_Service wi_Service;

	@GetMapping("/wish_info")
	public String wish_info(
			@RequestParam("wi_mbid") String wi_mbid, 
			@RequestParam(value = "page", defaultValue = "1") int page,
			Model model) {
		
		model.addAttribute("wi_mbid", wi_mbid);
		
		List<Wi_Bean> infoWi_Bean = wi_Service.getWishInfo(wi_mbid);
		model.addAttribute("infoWi_Bean",infoWi_Bean);
		
		PageCountBean pageCountBean = wi_Service.getContentCnt(wi_mbid, page);
		model.addAttribute("pageCountBean", pageCountBean);
		
		model.addAttribute("page", page);
		
		
		return "wish/wish_info";
		
	}
	@GetMapping("/wish_test")
	public String wish_test() {
		return "wish/wish_test";
	}
	
	
	//restAPI
	@GetMapping("/wish_add/{wi_mbid}/{wi_bknumbers}")
	public String wish_add(@PathVariable String wi_mbid,
							@PathVariable int wi_bknumbers) {
		wi_Service.addWishStuff(wi_mbid, wi_bknumbers);
		return null;
	}
	
	
	//restAPI
	@GetMapping("/wish_delete/{wi_mbid}/{wi_bknumbers}")
	public String wish_delete(@PathVariable String wi_mbid,
			@PathVariable int wi_bknumbers) {
		wi_Service.delwish(wi_mbid,wi_bknumbers) ;
		return null;
		
	}
	//restAPI
	@GetMapping("/wish_deleteAll/{wi_mbid}")
	public String wish_deleteAll(@PathVariable String wi_mbid) {
		wi_Service.delwishAll(wi_mbid);
		return null;
		
	}
	
}