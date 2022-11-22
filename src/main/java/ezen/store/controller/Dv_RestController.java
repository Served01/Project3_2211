package ezen.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import ezen.store.service.Dv_Service;

// html형태의 데이터가 아니라면 사용합니다. 아니라면 json으로 처리를 합니다.

@RestController
public class Dv_RestController {

	@Autowired
	private Dv_Service dv_Service;
	
	@GetMapping("/delivery/CheckDvNick/{dv_nick}")
	public String restApiControll(@PathVariable String dv_nick) {
		
		boolean chk = dv_Service.CheckDvNick(dv_nick);
		
		return chk + "";
		
	}
	
}
