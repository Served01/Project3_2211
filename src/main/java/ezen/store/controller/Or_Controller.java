package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	
	
	@GetMapping("/Or_list")
	public String OrList(@RequestParam("or_mbid") String or_mbid,
			@ModelAttribute("tempinfoOrBean") Or_Bean tempinfoOrBean,Model model) {
		
//		model.addAttribute("ca_mbid" , ca_mbid);
		List<Or_Bean> tempinfoBean = or_Service.getOrderInfo(or_mbid);
		
		List<Or_Bean> infoOrBean = or_Service.getOrderInfo(or_mbid);
		model.addAttribute("infoOrBean", infoOrBean);
		
		String or_number = infoOrBean.setOr_number(tempinfoOrBean.getOr_number());
			
		List<Or_Bean> itemsOrBean = or_Service.OrSelect(or_number);
		model.addAttribute("itemsOrBean", itemsOrBean);
		
		
		return "order/Or_list";
		
	}
	*/
	
	
	//주문 목록 출력
	@GetMapping("/Or_list")
	public String OrList(@RequestParam("or_mbid") String or_mbid, 
			Model model) {
		
//		model.addAttribute("ca_mbid" , ca_mbid);
		
		List<Or_Bean> listOrBean = or_Service.OrList(or_mbid);
		model.addAttribute("infoOrBean", listOrBean);
		
		String or_number = "";
		
//		if(infoOrBean.size() != 0) {
//		or_number = infoOrBean.get(0).getOr_number();
//		}
		
		List<Or_Bean> itemsOrBean = or_Service.OrSelect(or_number);
		model.addAttribute("itemsOrBean", itemsOrBean);
		
		
		return "order/Or_list";
		
	}
	
	
	
	
	//주문 상세 정보 출력
//	@GetMapping("/Or_select")
	@RequestMapping(value="/Or_select", method = {RequestMethod.GET, RequestMethod.POST})
	public String OrSelect(@RequestParam("or_mbid") String or_mbid,
			@RequestParam("or_number") String or_number, Model model) {
		
//		model.addAttribute("ca_mbid" , ca_mbid);
		
		List<Or_Bean> infoOrBean = or_Service.getOrInfo(or_mbid, or_number);
		
		//String or_number = infoOrBean.get(0).getOr_number();
		
		List<Or_Bean> itemsOrBean = or_Service.OrSelect(or_number);

		model.addAttribute("infoOrBean", infoOrBean);
		model.addAttribute("itemsOrBean", itemsOrBean);
		
		
		return "order/Or_select";
		
	}
	
	
	//결제 진행 페이지
	@GetMapping("/Or_purchase")
	public String Orpurchase(@RequestParam("dv_id") String dv_id,
			@RequestParam("ca_mbid") String ca_mbid,
			@RequestParam("or_mbid") String or_mbid,
			@RequestParam("or_number") String or_number,
			@RequestParam("or_status") String or_status, Model model) {
		
		List<Dv_Bean> listDvBean = dv_Service.getDvList(dv_id);
		model.addAttribute("Deliverylist", listDvBean);
		
		List<Ca_Bean> infoCaBean = ca_Service.getCartInfo(ca_mbid);
		model.addAttribute("infoCa_Bean", infoCaBean);
		
		List<Or_Bean> infoOrBean = or_Service.getOrInfo(or_mbid, or_number);
		model.addAttribute("infoOr_Bean", infoOrBean);
		
		
		
		return "order/Or_purchase";
	}
	
	
	@GetMapping("/Or_purchasePro")
	public String Orpurchse(@RequestParam("or_mbid") String or_mbid,
			@RequestParam("or_number") String or_number,
			@RequestParam("or_status") String or_status, Model model) {
		
		List<Or_Bean> purOrBean = or_Service.OrUpdate(or_mbid, or_number, or_status);
		model.addAttribute("purOrBean", purOrBean);
		
		return "order/Or_purchasePro";
	}
	
	
	
	
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
