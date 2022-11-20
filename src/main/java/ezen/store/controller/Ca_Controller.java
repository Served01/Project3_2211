package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ezen.store.beans.Ca_Bean;
import ezen.store.service.Ca_Service;

@Controller
@RequestMapping("/cart")
public class Ca_Controller {
	
	@Autowired
	private Ca_Service ca_Service;
	
	@GetMapping("/cart_info")
	public String cart_info(@RequestParam("mb_id") String mb_id, Model model) {
		
		
		List<Ca_Bean> infoCa_Bean = ca_Service.getCartInfo(mb_id);
		model.addAttribute("infoCa_Bean",infoCa_Bean);
		
		
		return "cart/cart_info";
		
	}
	@GetMapping("/cart_test")
	public String cart_test() {
		return "cart/cart_test";
	}
	
	
	//restAPI
	@GetMapping("/cart_add/{mb_id}/{bk_number}")
	public String cart_add(@PathVariable String mb_id,
							@PathVariable int bk_number) {
		ca_Service.addCartStuff(mb_id, bk_number);
		return null;
	}
	
	
	//restAPI
	@GetMapping("/cart_delete/{mb_id}/{bk_number}")
	public String cart_delete(@PathVariable String mb_id,
								@PathVariable int bk_number) {
		ca_Service.delcart(mb_id,bk_number) ;
		return null;
		
	}
	//restAPI
	@GetMapping("/cart_deleteAll/{mb_id}")
	public String cart_deleteAll(@PathVariable String mb_id) {
		ca_Service.delcartAll(mb_id);
		return null;
		
	}
	
	@GetMapping("/cart_plusBookCount/{mb_id}/{bknumbers}")
	public String cart_plusBookCount(@PathVariable String mb_id,
								@PathVariable int bk_number) {
		ca_Service.plusBookCount(mb_id,bk_number) ;
		return null;
		
	}
	
	@GetMapping("/cart_minusBookCount/{ca_mbid}/{ca_bknumbers}")
	public String cart_minusBookCount(@PathVariable String mb_id,
								@PathVariable int bk_number) {
		ca_Service.minusBookCount(mb_id,bk_number) ;
		return null;
	}
	
	@GetMapping("/cart_setBookCount/{ca_mbid}/{ca_bknumbers}/{newval}")
	public String cart_setBookCount(@PathVariable String ca_mbid,
								@PathVariable int ca_bknumbers,
								@PathVariable int newval) {
		ca_Service.setBookCount(ca_mbid,ca_bknumbers,newval) ;
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
