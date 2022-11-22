package ezen.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.Dv_Bean;
import ezen.store.beans.Mb_Bean;
import ezen.store.dao.Mb_DAO;
import ezen.store.service.Mb_Service;
import ezen.store.validator.Mb_Validator;

@Controller
@RequestMapping("/member")
public class Mb_Controller {

	@SuppressWarnings("unused")
	@Autowired
	private Mb_Service mbService;

	@SuppressWarnings("unused")
	@Autowired
	private Mb_Bean insertMbBean;

	@Autowired
	private Mb_Bean loginMbBean;

	@SuppressWarnings("unused")
	@Autowired
	private Mb_Bean tempMbBean;

	// 회원 전체 목록 컨트롤
	@GetMapping("/Mblist")
	public String Mblist(@RequestParam("mb_id") String mb_id, Model model) {

		model.addAttribute("mb_id", mb_id);

		List<Mb_Bean> memberlist = mbService.getMbList(mb_id);
		model.addAttribute("memberlist", memberlist);

		return "member/Mb_list";
	}

	// 회원 상세보기 컨트롤
	@GetMapping("/Mbselect")
	public String Mbselect(@RequestParam("mb_id") String mb_id, Model model) {

		model.addAttribute("mb_id", mb_id);

		Mb_Bean mbBean = mbService.getMbInfo(mb_id);
		model.addAttribute("mbBean", mbBean);

		return "member/Mb_select";
	}

	// 로그인 컨트롤
	@GetMapping("/Mblogin")
	public String Mblogin(@ModelAttribute("tempMbBean") Mb_Bean tempMbBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {

		model.addAttribute("fail", fail);

		model.addAttribute("tempMbBean", tempMbBean);
		return "member/Mb_login";
	}

	// 로그인 컨트롤 프로
	@PostMapping("/Mbloginpro")
	public String Mbloginpro(@Validated @ModelAttribute("tempMbBean") Mb_Bean tempMbBean, BindingResult result) {

		if (result.hasErrors()) {
			return "member/Mb_login";
		}

		mbService.getloginUserInfo(tempMbBean);

		if (loginMbBean.isMblogin() == true) {
			loginMbBean.setMblogin(true);
			return "member/Mb_login_success";
		} else {
			loginMbBean.setMblogin(false);
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

	// 회원정보 수정 컨트롤
	@GetMapping("/Mbupdate")
	public String Mbupdate(@ModelAttribute("updateMbBean") Mb_Bean updateMbBean) {

		mbService.getModifyUserInfo(updateMbBean);

		return "member/Mb_update";
	}

	// 회원정보 수정 컨트롤 프로
	@PostMapping("/Mbupdatepro")
	public String Mbupdatepro(@Validated @ModelAttribute("updateMbBean") Mb_Bean updateMbBean, BindingResult result) {

		if (result.hasErrors()) {
			return "member/Mb_update";
		}

		// 회원정보 수정 성공페이지
		mbService.modifyUserInfo(updateMbBean);

		return "member/Mb_update_success";
	}

	// 삭제 정보 컨트롤
	@GetMapping("/Mbdelete")
	public String Mbdelete(@ModelAttribute("deleteMbBean") Mb_Bean deleteMbBean) {

		mbService.getMbInfo(deleteMbBean);

		return "member/Mb_delete";
	}

	// 삭제 실행 컨트롤 프로
	@PostMapping("/Mbdeletepro")
	public String Mbdeletepro(@Validated @ModelAttribute("deleteMbBean") Mb_Bean deleteMbBean, BindingResult result) {

		if (result.hasErrors()) {
			return "member/Mb_delete";
		}

		mbService.deleteUserInfo(deleteMbBean);

		return "member/Mb_delete_success";
	}

	// password check routine
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		Mb_Validator validator = new Mb_Validator();
		binder.addValidators(validator);
	}

	// 로그아웃 컨트롤
	@GetMapping("/Mblogout")
	public String Mblogout() {

		loginMbBean.setMblogin(false);

		return "member/Mb_logout";
	}

	// 로그인 확인 컨트롤
	@GetMapping("/Mbnotlogin")
	public String notlogin() {

		return "member/Mb_not_login";
	}	
	
	
	

}