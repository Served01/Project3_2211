package ezen.store.controller;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.Ca_Bean;
import ezen.store.beans.Dv_Bean;
import ezen.store.beans.Or_Bean;
import ezen.store.beans.Or_items;
import ezen.store.service.Ca_Service;
import ezen.store.service.Dv_Service;
import ezen.store.service.Or_Service;

@Controller
@RequestMapping("/order")
public class Or_Controller {

	/* @GetMapping("/main")
	 * @ : Annotation 을 이용한다는 것은 비지니스 로직에만 개발자가 전념하도록 유도하는 것 입니다.
	 *  기존에는 객체 관리를 개발자가 했는데, 그런데 스프링에서는 스프링프레임워크에서 객체를 생성하고 관리 합니다.
	 */
	
	@Autowired
	private Or_Service or_Service;

	@Autowired
	private Dv_Service dv_Service;
	
	@Autowired
	private Ca_Service ca_Service;
	
	
	/*
	@RequestMapping(value="URL이 들어가는 자리")
	public void MemberInfo( @RequestBody HashMap<String, Object> params ) throws Exception {
	//데이터를 담아줄 map 생성 
	HashMap< String , Object > map = new HashMap< String , Object >(); 
	//일반 파라미터는 map에 그대로 
	put map.put( "site" , params.get( "site" ) );
	//배열 파라미터는 list에 put하고 그 list를 map에 put 
	List<Map<String,Object>> memberList = (List<Map<String, Object>>) params.get("login_data"); 
	map.put( "memberList" , memberList); }
	
	
	*/
	
	
	//주문 목록 출력 select
	@GetMapping("/Or_list")
	public String OrList(@RequestParam("mb_id") String mb_id, 
			Model model) {
		
//		model.addAttribute("ca_mbid" , ca_mbid);
		
		//mb id 일치하는 order list select
		List<Or_Bean> listOrBean = or_Service.OrList(mb_id);
		model.addAttribute("infoOrBean", listOrBean);
		
		String or_number = "";
		
//		if(infoOrBean.size() != 0) {
//		or_number = infoOrBean.get(0).getOr_number();
//		}
		
		List<Or_Bean> itemsOrBean = or_Service.OrSelect(or_number);
		model.addAttribute("itemsOrBean", itemsOrBean);
		
		
		return "order/Or_list";
		
	}
	
	
	
	
	//주문 상세 정보 출력 select
//	@GetMapping("/Or_select")
	@RequestMapping(value="/Or_select", method = {RequestMethod.GET, RequestMethod.POST})
	public String OrSelect(@RequestParam("mb_id") String mb_id,
			@RequestParam("or_number") String or_number, Model model) {
		
//		model.addAttribute("ca_mbid" , ca_mbid);
		
		//mb id, or number 일치하는 order select
		List<Or_Bean> infoOrBean = or_Service.getOrInfo(mb_id, or_number);
		model.addAttribute("infoOrBean", infoOrBean);
		
		//or number 일치하는 items select
		List<Or_Bean> itemsOrBean = or_Service.OrSelect(or_number);

		
		model.addAttribute("itemsOrBean", itemsOrBean);
		
		
		return "order/Or_select";
		
	}
	
		
	
	//결제 진행 페이지 insert/update
	@GetMapping("/Or_purchase")
	public String Orpurchase(
			@RequestParam("mb_id") String mb_id,
			@RequestParam("or_number") String or_number,
			 Model model) {
		
		//mb id 일치하는 배송지 정보 출력
		List<Dv_Bean> listDvBean = dv_Service.getDvList(mb_id);
		model.addAttribute("listDvBean", listDvBean);
		
		//mb id 일치하는 장바구니 정보 출력
		List<Ca_Bean> infoCaBean = ca_Service.getCartInfo(mb_id);
		model.addAttribute("infoCaBean", infoCaBean);
		
		//mb id 일치하는 주문 정보 생성 or number
		List<Or_Bean> infoOrBean = or_Service.getOrInfo(mb_id, or_number);
		model.addAttribute("infoOrBean", infoOrBean);
		
		
		//mb_id 일치하는 주문 결제 완료로 표시 위한 주문 출력
		Or_Bean updateOrPurchase = or_Service.UpdateOrBean(mb_id, or_number);
		model.addAttribute("updateOrPurchase", updateOrPurchase);
		
		return "order/Or_purchase";
	}
	
	
	@PostMapping("/Or_purchasePro")
	public String Orpurchse(@RequestParam("mb_id") String mb_id,
			@RequestParam("or_number") String or_number,
			//@RequestParam("dv_pk") String dv_pk,
			@ModelAttribute("updateOrPurchase") Or_Bean updateOrPurchase,
			BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			return "order/Or_purchasefail";
		}
		
		List<Or_Bean> infoOrBean = or_Service.getOrInfo(mb_id, or_number);
		model.addAttribute("infoOrBean", infoOrBean);
		
		//주문 status update
		or_Service.UpdateOrPurchase(updateOrPurchase);
		model.addAttribute("updateOrPurchase", updateOrPurchase);
		
		
		
		//주문 아이템 정보 list select
		List<Or_Bean> updateOriBean = or_Service.UpdateOriBean(or_number);
		model.addAttribute("updateOriBean", updateOriBean);
		
		
		//주문 정보의 bk_number, bk_quantity list select
		List<Or_items> bkNum = or_Service.SelectBkQuantity(or_number);
		model.addAttribute("bkNum", bkNum);
		
		
		//bk_number(수만큼 반복)와 bk_quantity 추출 및 수정 대입
		for(int i=0; i<bkNum.size(); i++) {
			
			Or_items bk_items = bkNum.get(i);
			int bk_number = bk_items.getBk_number();
			
			//bk_number 일치하는 bk select
			Or_Bean updateBkBean = or_Service.SelectBkPurchase(or_number, bk_number);
			model.addAttribute("updateBkBean", updateBkBean);
			
			//bk quantity update
			or_Service.UpdateBkQuantity(updateBkBean);
			
		}
		
		
		return "order/Or_purchasesuccess";
	}
	
	
	//주문 A/S update (Book 재고수 변경 필요)
	@GetMapping("/Or_after")
	public String Orafter(@RequestParam("mb_id") String mb_id,
			@RequestParam("or_number") String or_number,
			Model model) {
		
		//수정을 위한 주문 select
		Or_Bean updateOrBean = or_Service.UpdateOrBean(mb_id, or_number);
		model.addAttribute("updateOrBean", updateOrBean);
		
		//주문 아이템들 select
		List<Or_Bean> updateOriBean = or_Service.UpdateOriBean(or_number);
		model.addAttribute("updateOriBean", updateOriBean);
		
		
		return "order/Or_after";
	}
	
	@PostMapping("/Or_afterPro")
	public String OrafterPro(@ModelAttribute("updateOrBean") Or_Bean updateOrBean,
			BindingResult result1,
			@RequestParam("mb_id") String mb_id,
			@RequestParam("or_number") String or_number,
			BindingResult result, Model model) {
		
		if (result1.hasErrors()) {
			return "order/Or_afterfail";
		}
		
		
		//주문 status update
		or_Service.OrUpdateAfter(updateOrBean);
		
		Or_Bean infoOrBean = or_Service.UpdateOrBean(mb_id, or_number);
		model.addAttribute("infoOrBean", infoOrBean);
		
		String Status = infoOrBean.getOr_status();
		
		
		 if(Status.equals("교환")) {
		 
		 return "order/Or_aftersuccess";
		 }
		
		//주문 아이템 정보 list select
		List<Or_Bean> updateOriBean = or_Service.UpdateOriBean(or_number);
		model.addAttribute("updateOriBean", updateOriBean);
		
		
		//주문 정보의 bk_number, bk_quantity list select
		List<Or_items> bkNum = or_Service.SelectBkQuantity(or_number);
		model.addAttribute("bkNum", bkNum);
		
		
		//bk_number(수만큼 반복)와 bk_quantity 추출 및 수정 대입
		for(int i=0; i<bkNum.size(); i++) {
			
			Or_items bk_items = bkNum.get(i);
			int bk_number = bk_items.getBk_number();
			
			//bk_number 일치하는 bk select
			Or_Bean updateBkBean = or_Service.SelectBkAfter(or_number, bk_number);
			model.addAttribute("updateBkBean", updateBkBean);
			
			//bk quantity update
			or_Service.UpdateBkQuantity(updateBkBean);
			
		}
		 
		
		return "order/Or_aftersuccess";
	}
}
