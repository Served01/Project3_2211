package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.Rv_Bean;
import ezen.store.service.Rv_Service;

@Controller
@RequestMapping("/review")
public class Rv_Controller {
	
	@Autowired
	private Rv_Service rv_Service;
	
	@GetMapping("/list")
	public String list(@RequestParam("rv_bknumber") int rv_bknumber, Model model) {
		
		model.addAttribute("rv_bknumber", rv_bknumber);
		
		List<Rv_Bean> reviewlist = rv_Service.getRvList(rv_bknumber);
		model.addAttribute("reviewlist", reviewlist);
		
		return "review/Rv_list";
	}

}
