package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.Ca_Bean;
import ezen.store.beans.Or_Bean;
import ezen.store.service.Or_Service;

@Controller
@RequestMapping("/order")
public class Or_Controller {

	/* @GetMapping("/main")
	 * @ : Annotation 을 이용한다는 것은 비지니스 로직에만 개발자가 전념하도록 유도하는 것 입니다.
	 *  기존에는 객체 관리를 개발자가 했는데, 그런데 스프링에서는 스프링프레임워크에서 객체를 생성하고 관리 합니다.
	 */
	
	@SuppressWarnings("unused")
	@Autowired
	private Or_Service or_Service;
	
	
	
	@GetMapping("/Or_list")
	public String cart_info(@RequestParam("or_mbid") String or_mbid, Model model) {
		
//		model.addAttribute("ca_mbid" , ca_mbid);
		
		List<Or_Bean> infoOr_Bean = or_Service.getOrderInfo(or_mbid);
		model.addAttribute("infoOr_Bean",infoOr_Bean);
		
		
		return "order/Or_list";
		
	}
	@GetMapping("/cart_test")
	public String cart_test() {
		return "cart/cart_test";
	}
	
	
	//restAPI
	@GetMapping("/cart_add/{ca_mbid}/{ca_bknumbers}")
	public String cart_add(@PathVariable String ca_mbid,
							@PathVariable int ca_bknumbers) {
		or_Service.Or_insert(ca_mbid, ca_bknumbers);
		return null;
	}

	/*
	 * @GetMapping("/purchase") public String read(@RequestParam("board_info_idx")
	 * int board_info_idx,
	 * 
	 * @RequestParam("content_idx") int content_idx, Model model) {
	 * 
	 * model.addAttribute("board_info_idx", board_info_idx);
	 * 
	 * OrderDataBean readContentDataBean = or_Service.getContentInfo(content_idx);
	 * model.addAttribute("readContentDataBean", readContentDataBean);
	 * 
	 * return "board/read"; }
	 */
	/*
	 * @GetMapping("/write") public String
	 * write(@ModelAttribute("writeContentDataBean") ContentDataBean
	 * writeContentDataBean,
	 * 
	 * @RequestParam("board_info_idx") int board_info_idx) {
	 * 
	 * // 어떤 게시판이냐? writeContentDataBean.setContent_board_idx(board_info_idx);
	 * 
	 * return "board/write"; }
	 * 
	 * @PostMapping("/write_pro") public String
	 * write_pro(@Validated@ModelAttribute("writeContentDataBean") ContentDataBean
	 * writeContentDataBean, BindingResult result) {
	 * 
	 * if(result.hasErrors()) { return "board/write"; } // upload 처리
	 * boardUploadService.addContentInfo(writeContentDataBean);
	 * 
	 * return "board/write_success"; }
	 */
	
	/*
	 * @GetMapping("/modify") public String modify() { return "board/modify"; }
	 * 
	 * @GetMapping("/delete") public String delete() { return "board/delete"; }
	 */
}
