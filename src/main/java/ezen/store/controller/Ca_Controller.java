package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import ezen.store.beans.Ca_Bean;
import ezen.store.service.Ca_Service;

@Controller
@RequestMapping("/cart")
public class Ca_Controller {
	
	@Autowired
	private Ca_Service ca_Service;
	
//	@Autowired
//	private Ca_Bean addStuff;
	
	
	@GetMapping("/cart_info")
	public String cart_info(@RequestParam("ca_mbid") String ca_mbid, Model model) {
		
//		model.addAttribute("ca_mbid" , ca_mbid);
		
		List<Ca_Bean> infoCa_Bean = ca_Service.getCartInfo(ca_mbid);
		model.addAttribute("infoCa_Bean",infoCa_Bean);
		
		
		return "cart/cart_info";
		
	}
	@GetMapping("/cart_test")
	public String cart_test() {
		return "cart/cart_test";
	}
	
	
	//restAPI
	@GetMapping("/cart_add/{ca_mbid}/{ca_bknumbers}")
	public String cart_add(@PathVariable String ca_mbid,
							@PathVariable int ca_bknumbers) {
		ca_Service.addCartStuff(ca_mbid, ca_bknumbers);
		return null;
	}
	
	
	//restAPI
	@GetMapping("/cart_delete/{ca_mbid}/{ca_bknumbers}")
	public String cart_delete(@PathVariable String ca_mbid,
								@PathVariable int ca_bknumbers) {
		ca_Service.delcart(ca_mbid,ca_bknumbers) ;
		return null;
		
	}
	//restAPI
	@GetMapping("/cart_deleteAll/{ca_mbid}")
	public String cart_deleteAll(@PathVariable String ca_mbid) {
		ca_Service.delcartAll(ca_mbid);
		return null;
		
	}
	
	@GetMapping("/cart_plusBookCount/{ca_mbid}/{ca_bknumbers}")
	public String cart_plusBookCount(@PathVariable String ca_mbid,
								@PathVariable int ca_bknumbers) {
		ca_Service.plusBookCount(ca_mbid,ca_bknumbers) ;
		return null;
		
	}
	
	@GetMapping("/cart_minusBookCount/{ca_mbid}/{ca_bknumbers}")
	public String cart_minusBookCount(@PathVariable String ca_mbid,
								@PathVariable int ca_bknumbers) {
		ca_Service.minusBookCount(ca_mbid,ca_bknumbers) ;
		return null;
		
	}
	
	@GetMapping("/cart_createOderInfo/{or_number}/{ca_mbid}")
	public String cart_createOderInfo(@PathVariable String or_number,
								@PathVariable String ca_mbid) {
		ca_Service.createOderInfo(or_number,ca_mbid) ;
		return null;
		
	}
	
	@GetMapping("/cart_insertOderItems/{or_number}/{ca_bknumbers}/{ca_mbid}")
	public String cart_insertOderItems(@PathVariable String or_number,
								@PathVariable int ca_bknumbers,
								@PathVariable String ca_mbid) {
		ca_Service.insertOderItems(or_number,ca_bknumbers,ca_mbid) ;
		return null;
		
	}
	
	
	
	
}
