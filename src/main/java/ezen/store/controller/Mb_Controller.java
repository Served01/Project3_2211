package ezen.store.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import ezen.store.beans.Mb_Bean;
import ezen.store.beans.PageCountBean;
import ezen.store.service.Mb_Service;

@Controller
@RequestMapping("/member")
public class Mb_Controller {

	@Autowired
	private Mb_Service mbService;

	// 로그인 여부 체크
	@GetMapping("/loginCheck")
	public String loginCheck() {

		return "member/Mb_loginCheck_logout";
	}
	
	// 로그아웃 컨트롤
		@GetMapping("/Mblogout")
		public String Mblogout(HttpServletRequest request) throws Exception {
			
			HttpSession session = request.getSession();
			
			session.invalidate();
			

			return "member/Mb_logout";
	}

		
	
	// 회원 전체목록 기능
	@GetMapping("/Mblist")
	public String Mblist(@RequestParam("mb_id") String mb_id, 
						 @RequestParam(value="page", defaultValue="1") int page,
						 Model model) {

		model.addAttribute("mb_id", mb_id);

		List<Mb_Bean> memberlist = mbService.getMbList();
		model.addAttribute("memberlist", memberlist);
		
		PageCountBean pageCountBean = mbService.getContentCnt(page);
		model.addAttribute("pageCountBean", pageCountBean);

		return "member/Mb_list";
	}

	// 회원 상세보기 기능
	@GetMapping("/Mbselect")
	public String Mbselect(@RequestParam("mb_id") String mb_id, Model model) {

		model.addAttribute("mb_id", mb_id);

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
							 HttpSession session,
							 BindingResult result) {

		if (result.hasErrors()) {
			
			tempMbBean.setMblogin(false);
			
			return "member/Mb_login";
		}
		
		tempMbBean.setMblogin(true);

		boolean loginCheck = mbService.getloginUserInfo(tempMbBean);

		if (loginCheck == true) {
			
			if(session.getAttribute("mb_id") != null) {
				
				session.removeAttribute("mb_id");
				
				session.setAttribute("mb_id", tempMbBean.getMb_id());
				
				session.setMaxInactiveInterval(60*60*6);
				
				return "member/Mb_login_success";
				
			} else {
			
				session.removeAttribute("loginBean");
				
				session.setAttribute("loginBean", tempMbBean);
				
				session.setMaxInactiveInterval(60*60*6);
			
			return "member/Mb_login_success";
			
			}} else {
				
				tempMbBean.setMblogin(false);
				
				return "member/Mb_login";
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
	public String Mbupdate(@RequestParam("mb_id") String mb_id, Model model) {
		
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

			// 회원정보 수정 성공페이지
			mbService.modifyUserInfo(updateMbBean);

			return "member/Mb_update_success";
		}

	
	
		// 회원정보 삭제 페이지
		@GetMapping("/Mbdelete")
		public String Mbdelete(@RequestParam("mb_id") String mb_id, Model model) {

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