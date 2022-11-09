package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.Dv_Bean;
import ezen.store.service.Dv_Service;

@Controller
public class Dv_Controller {
	
	@Autowired
	private Dv_Service dv_Service;
	
	//Dv_list
	@GetMapping("/delivery/Dv_list")
	public String list(@RequestParam("dv_id") String dv_id, Model model) {
		
		List<Dv_Bean> deliverylist = dv_Service.getDvList(dv_id);
		model.addAttribute("deliverylist", deliverylist);
		
		return "delivery/Dv_list";
	}
	//Dv_insert
	@GetMapping("/delivery/Dv_insert")
	public String insert(@ModelAttribute("insertDv_Bean") Dv_Bean insertDv_Bean) {
				
		return "delivery/Dv_insert";
	}
	
	@PostMapping("/delivery/Dv_insert_pro")
	public String Dv_insert_pro(@Validated@ModelAttribute("insertDv_Bean") Dv_Bean insertDv_Bean) {
				
		dv_Service.addDvInfo(insertDv_Bean);
		
		return "delivery/Dv_insert_success";
	}
	//Dv_update
	@GetMapping("/delivery/Dv_update")
	public String update(@RequestParam("dv_id") String dv_id, Model model) {
		
		Dv_Bean updateDv_Bean = dv_Service.updateDv_Bean(dv_id);
		model.addAttribute("updateDv_Bean", updateDv_Bean);
		
		return "delivery/Dv_update";
	}
	
	@PostMapping("/delivery/Dv_update_pro")
	public String Dv_update_pro(@ModelAttribute("updateDv_Bean") Dv_Bean updateDv_Bean) {
		
		dv_Service.updateDvInfo(updateDv_Bean);
		return "delivery/Dv_update_success";
	}

}

