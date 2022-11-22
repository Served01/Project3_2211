package ezen.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import ezen.store.service.Mb_Service;

// html형태의 데이터가 아니라면 사용합니다. 아니라면 json으로 처리를 합니다.

@RestController
public class RestApiController {

	@Autowired
	Mb_Service mbSevice;
	
	@GetMapping("/member/checkUserIdExist/{mb_id}")
	public String restApiControll(@PathVariable String mb_id) {
		
		boolean chk = mbSevice.checkUserIdExist(mb_id);
		
		return chk + "";
		
	}
	
}
