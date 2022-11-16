package ezen.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import ezen.store.service.Ca_Service;

@RestController
@RequestMapping("/cart")
public class Ca_RestController {
	
	@Autowired
	private Ca_Service ca_Service;
	
	@GetMapping("/cart_checkOrderNumber/{or_number}")
	public String cart_checkOrderNumber(@PathVariable String or_number) {
		
		boolean chk = ca_Service.checkOrderNumExist(or_number);
		
		return chk + "";
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
		
		@GetMapping("/cart_delPreOrder/{ca_mbid}")
		public String cart_delPreOrder(@PathVariable String ca_mbid) {
			ca_Service.delPreOrder(ca_mbid);
			return null;
			
		}
		@GetMapping("/cart_delPreOrderItems/{ca_mbid}")
		public String cart_delPreOrderItems(@PathVariable String ca_mbid) {
			ca_Service.delPreOrderItems(ca_mbid);
			return null;
			
		}
}
