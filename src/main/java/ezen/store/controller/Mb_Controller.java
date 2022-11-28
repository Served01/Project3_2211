package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ezen.store.beans.Mb_Bean;
import ezen.store.beans.PageCountBean;
import ezen.store.service.Mb_Service;

@Controller
@SessionAttributes("mb_id")
@RequestMapping("/member")
public class Mb_Controller {

	@Autowired
	private Mb_Service mbService;
	
	@SuppressWarnings("unused")
	@Autowired
	private Mb_Bean insertMbBean;

	@SuppressWarnings("unused")
	@Autowired
	private Mb_Bean tempMbBean;
	
	@SuppressWarnings("unused")
	@Autowired
	private Mb_Bean updateMbBean;
	
	@SuppressWarnings("unused")
	@Autowired
	private Mb_Bean deleteMbBean;
	
	// 로그아웃 컨트롤
		@GetMapping("/Mblogout")
		public String Mblogout(SessionStatus sessionStatus) throws Exception {
			
			sessionStatus.setComplete();
			
			return "member/Mb_logout";
	}
		
	// 세션 종료후 자동 초기화
		@GetMapping("/MbInitial")
		public String Mbintial(Model model) {
					
				model.addAttribute("mb_id","0");
					
				return "member/Mb_not_login";
		}

		
	//로그인을 요구하는 페이지
	@GetMapping("/MbRequired")
	public String Mbrequired(@ModelAttribute("tempMbBean") Mb_Bean tempMbBean
							  ) {
		return "member/Mb_required_login";
	}
	
	// 회원 전체목록 기능
	@GetMapping("/Mblist")
	public String Mblist( 
						 @RequestParam(value="page", defaultValue="1") int page,
						 Model model) {

		
		List<Mb_Bean> memberlist = mbService.getMbList();
		model.addAttribute("memberlist", memberlist);
		
		PageCountBean pageCountBean = mbService.getContentCnt(page);
		model.addAttribute("pageCountBean", pageCountBean);

		return "member/Mb_list";
	}

	// 회원 상세보기 기능
	@GetMapping("/Mbselect")
	public String Mbselect(@SessionAttribute("mb_id") String mb_id, Model model) {

		
		Mb_Bean mbBean = mbService.getMbInfo(mb_id);
		model.addAttribute("mbBean", mbBean);

		return "member/Mb_select";
	}

	// 로그인 페이지
	@GetMapping("/Mblogin")
	public String Mblogin(@ModelAttribute("tempMbBean") Mb_Bean tempMbBean
						  ) {
		return "member/Mb_login";
	}

	// 로그인 기능
	@PostMapping("/Mbloginpro")
	public String Mbloginpro(@Validated@ModelAttribute("tempMbBean") Mb_Bean tempMbBean, 
							 BindingResult result,
							 Model model) {

		
		if (result.hasErrors()) {
			
			tempMbBean.setMblogin(false);
			
			return "member/Mb_login";
		}
		
		tempMbBean.setMblogin(true);

		boolean loginCheck = mbService.getloginUserInfo(tempMbBean);
		
		String mb_id = "0";
		
		if(tempMbBean.getMb_id()!=null) {
		mb_id = tempMbBean.getMb_id();
		}
		
		if (loginCheck == true) {
			
			model.addAttribute("mb_id", mb_id);
			
			
			
			return "member/Mb_login_success";
			
			} else {
				
				tempMbBean.setMblogin(false);
				
				return "member/Mb_login_fail";
			}
		
		
			
		
	}
	
	// 회원가입 컨트롤
	@GetMapping("/Mbinsert")
	public String Mbinsert(@ModelAttribute("insertMbBean") Mb_Bean insertMbBean) {

		return "member/Mb_insert";
	}

	// 회원가입 컨트롤 프로
	@PostMapping("/Mbinsertpro")
	public String Mbinsertpro(@Validated @ModelAttribute("insertMbBean") Mb_Bean insertMbBean, BindingResult result) {

		if (result.hasErrors()) {
			return "member/Mb_insert";
		}

		mbService.addUserInfo(insertMbBean);

		return "member/Mb_insert_success";
	}

	// 회원정보 수정 페이지
	@GetMapping("/Mbupdate")
	public String Mbupdate(@SessionAttribute("mb_id") String mb_id, Model model) {
		
		Mb_Bean updateMbBean = mbService.getModifyUserInfo(mb_id);
		model.addAttribute("updateMbBean", updateMbBean);
		
		return "member/Mb_update";
	}
	

		// 회원정보 수정 기능
		@PostMapping("/Mbupdatepro")
		public String Mbupdatepro(@Validated@ModelAttribute("updateMbBean") Mb_Bean updateMbBean, BindingResult result) {

			if (result.hasErrors()) {
				return "member/Mb_update";
			}

				if(updateMbBean.getMb_pw().equals(updateMbBean.getMb_pw2())) {
				
				mbService.deleteUserInfo(updateMbBean);
			
				return "member/Mb_update_success";
			
			} else {
				
				return "member/Mb_update";
				
			}

		}

	
		// 회원정보 삭제 페이지
		@GetMapping("/Mbdelete")
		public String Mbdelete(@SessionAttribute("mb_id") String mb_id, Model model) {

			Mb_Bean deleteMbBean = mbService.getMbInfo(mb_id);
			model.addAttribute("deleteMbBean", deleteMbBean);

			return "member/Mb_delete";
		}
		
		
		// 회원정보 삭제(처리) 기능 
		@PostMapping("/Mbdeletepro")
		public String Mbdeletepro(@ModelAttribute("deleteMbBean") Mb_Bean deleteMbBean, BindingResult result) {
			
			if(result.hasErrors()) {
				return "member/Mb_delete";
			}
			
			if(deleteMbBean.getMb_pw().equals(deleteMbBean.getMb_pw2())) {
				
				mbService.deleteUserInfo(deleteMbBean);
			
				return "member/Mb_delete_success";
			
			} else {
				
				return "member/Mb_delete_fail";
				
			}
			
		}

}