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
		
		//String or_number = infoOrBean.get(0).getOr_number();
		
		//or number 일치하는 items select
		List<Or_Bean> itemsOrBean = or_Service.OrSelect(or_number);

		model.addAttribute("infoOrBean", infoOrBean);
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
		
		Or_Bean updateOrPurchase = or_Service.UpdateOrBean(mb_id, or_number);
		model.addAttribute("updateOrPurchase", updateOrPurchase);
		
		return "order/Or_purchase";
	}
	
	
	@PostMapping("/Or_purchasePro")
	public String Orpurchse(@RequestParam("mb_id") String mb_id,
			@RequestParam("or_number") String or_number,
			@RequestParam("dv_nick") String dv_nick,
			@ModelAttribute("updateOrPurchase") Or_Bean updateOrPurchase,
			BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			return "order/Or_purchasefail";
		}
		
		//List<Or_Bean>
		//orUpdatePurchase =
		or_Service.UpdateOrPurchase(updateOrPurchase);
		model.addAttribute("updateOrPurchase", updateOrPurchase);
		
		return "order/Or_purchasesuccess";
	}
	
	/*
	@GetMapping("/Or_after")
	public String Orafter(@RequestParam("or_mbid") String or_mbid,
			@RequestParam("or_number") String or_number,
			
			Model model) {
		
		List<Or_Bean> updateOrBean = or_Service.getOrInfo(or_mbid, or_number);
		model.addAttribute("updateOrBean", updateOrBean);
		
		List<Or_Bean> itemsOrBean = or_Service.OrSelect(or_number);
		model.addAttribute("itemsOrBean", itemsOrBean);
		
		
		return "order/Or_after";
	}
	*/
	
	
	//주문 A/S update (Book 재고수 변경 필요)
	@GetMapping("/Or_after")
	public String Orafter(@RequestParam("mb_id") String mb_id,
			@RequestParam("or_number") String or_number,
			Model model) {
		
		//수정을 위한 주문 select
		Or_Bean updateOrBean = or_Service.UpdateOrBean(mb_id, or_number);
		model.addAttribute("updateOrBean", updateOrBean);
		
		List<Or_Bean> updateOriBean = or_Service.UpdateOriBean(or_number);
		model.addAttribute("updateOriBean", updateOriBean);
		
		return "order/Or_after";
	}
	
	@PostMapping("/Or_afterPro")
	public String OrafterPro(@ModelAttribute("updateOrBean") Or_Bean updateOrBean,
			BindingResult result1,
			//@ModelAttribute("updateOriBean") List<Or_Bean> updateOriBean,
			//BindingResult result2,
			//@RequestParam("bk_number") int bk_number, //@RequestParam("ori_bkcount") int ori_bkcount,
			@RequestParam("or_number") String or_number,
			BindingResult result, Model model) {
		
		if (result1.hasErrors()/* || result2.hasErrors() */) {
			return "order/Or_afterfail";
		}
		
		or_Service.OrUpdateAfter(updateOrBean);
		
		
		 if(updateOrBean.getOr_status() == "교환") {
		 
		 return "order/Or_aftersuccess";
		 }
		 
		List<Or_Bean> updateOriBean = or_Service.UpdateOriBean(or_number);
		model.addAttribute("updateOriBean", updateOriBean);
		
		for(int i = 0; i < updateOriBean.size() ; i++) {
			
		//	or_Service.OriUpdateAfter(updateOriBean); //bk값 가져오기
			
		}
		//updateOriBean = or_Service.UpdateOriBean(or_number);
		//model.addAttribute("updateOriBean", updateOriBean);
			
			
		
		
		return "order/Or_aftersuccess";
	}
	
	
	@PostMapping("/Or_afterPro2")
	public String OrafterPro2(@ModelAttribute("updateOrBean") Or_Bean updateOrBean,
			BindingResult result1,
			//@ModelAttribute("updateOriBean") List<Or_Bean> updateOriBean,
			//BindingResult result2,
			//@RequestParam("bk_number") int bk_number, //@RequestParam("ori_bkcount") int ori_bkcount,
			@RequestParam("or_number") String or_number,
			BindingResult result, Model model) {
		
		if (result1.hasErrors()/* || result2.hasErrors() */) {
			return "order/Or_after";
		}
		
		or_Service.OrUpdateAfter(updateOrBean);
		
		
		 if(updateOrBean.getOr_status() == "교환") {
		 
		 return "order/Or_aftersuccess";
		 }
		 
		List<Or_Bean> updateOriBean = or_Service.UpdateOriBean(or_number);
		model.addAttribute("updateOriBean", updateOriBean);
		
		
		for(int i = 0; i < updateOriBean.size() ; i++) {
			
			updateOriBean.get(i).getBk_number();
		or_Service.OriUpdateAfter(updateOriBean); //bk값 가져오기
			
		}
		//updateOriBean = or_Service.UpdateOriBean(or_number);
		//model.addAttribute("updateOriBean", updateOriBean);
			
			
		
		
		return "order/Or_aftersuccess";
	}
	
	
	/*
	@GetMapping("/BkList")
	public String BkList(
			@RequestParam("bk_local") String bk_local, 
			@RequestParam("bk_genre") String bk_genre,
			Model model) {

		model.addAttribute("bk_local", bk_local);
		model.addAttribute("bk_genre", bk_genre);
		
		List<Bk_Number> bkNumList = BkService.getBkNumList(bk_local, bk_genre);
		
		
		List<Bk_Bean> bkListBean = new ArrayList<Bk_Bean>();
		
		for(int i=0; i<bkNumList.size(); i++) {
			
			Bk_Number bk_numbers = bkNumList.get(i);
			int bk_number = bk_numbers.getBk_number();
			
			Bk_Bean bkInfoBean = BkService.getBkInfo(bk_number);
			double avg_score = BkService.getBkScore(bk_number);
			
			bkInfoBean.setAvg_score(avg_score);
			
			bkListBean.add(i, bkInfoBean);
		}
		
		model.addAttribute("bkListBean", bkListBean);
		
		return "book/Bk_list";
	}
	*/
	/*
	
	@GetMapping("/Or_afterPro")
	public String OrafterPro(@RequestParam("or_mbid") String or_mbid,
			@RequestParam("or_number") String or_number,
			@RequestParam("or_status") String or_status,
			Model model, BindingResult result) {
		
		List<Or_Bean> infoOrBean = or_Service.getOrInfo(or_mbid, or_number);
		
		List<Or_Bean> aftOrBean = or_Service.OrAfter(or_mbid, or_number, or_status);
		
		model.addAttribute("aftOrBean", aftOrBean);
		
		if(result.hasErrors()) {
			return "order/Or_after";
		}
		
		
		return "order/Or_aftersuccess";
	}
	*/
	
	
//	@GetMapping("/Or_select")
//	public String OrSelect(@RequestParam("or_number") String or_number, Model model) {
//		
///		model.addAttribute("ca_mbid" , ca_mbid);
//		
	//	List<Or_Bean> detailOrBean = or_Service.OrSelect(or_number);
	//	model.addAttribute("detailOrBean", detailOrBean);
	//	
	//	
	//	return "order/Or_select";
		
//	}
	
	
	/*
	 * //restAPI
	 * 
	 * @GetMapping("/cart_add/{ca_mbid}/{ca_bknumbers}") public String
	 * cart_add(@PathVariable String ca_mbid,
	 * 
	 * @PathVariable int ca_bknumbers) { or_Service.Or_insert(ca_mbid,
	 * ca_bknumbers); return null; }
	 */
	/*
	@GetMapping("/purchase")
	public String purchase(HttpServletRequest request, @RequestParam("board_info_idx")
	int board_info_idx,	
	@RequestParam("content_idx") int content_idx, Model model) {
	
	model.addAttribute("board_info_idx", board_info_idx);
	
	Or_Bean readContentDataBean = or_Service.getContentInfo(content_idx);
	model.addAttribute("readContentDataBean", readContentDataBean);
	
	return "board/read"; }
	*/
	/*
	@RequestMapping("/purchase")
	public String purchase(HttpServletRequest request, @RequestParam("mb_id")
	int mb_id,	@RequestParam("ca_mbid") int ca_mbid, Model model) {
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");

		model.addAttribute("id",id);
		model.addAttribute("name",name);
		model.addAttribute("pw",pw);
		model.addAttribute("email",email);

		return "member/join";
	}
	
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
