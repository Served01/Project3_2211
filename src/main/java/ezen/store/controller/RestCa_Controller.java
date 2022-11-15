package ezen.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import ezen.store.service.Ca_Service;

@RestController
public class RestCa_Controller {
	
	@Autowired
	private Ca_Service ca_Service;
	
	@GetMapping("cart/cart_checkOrderNumber/{or_number}")
	public String cart_checkOrderNumber(@PathVariable String or_number) {
		
		boolean chk = ca_Service.checkOrderNumExist(or_number);
		
		return chk + "";
	}
}
