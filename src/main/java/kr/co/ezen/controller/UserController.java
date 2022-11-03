package kr.co.ezen.controller;

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

import kr.co.ezen.beans.Mb_Bean;
import kr.co.ezen.service.Mb_Service;
import kr.co.ezen.validator.Mb_Validator;

@Controller
@RequestMapping("/member")
public class UserController {

	@SuppressWarnings("unused")
	@Autowired
	private Mb_Service mbService;
	@SuppressWarnings("unused")
	@Autowired
	private Mb_Bean insert_mb_Bean;
	
	@Autowired
	private Mb_Bean loginUserDataBean;
	
	@SuppressWarnings("unused")
	@Autowired
	private Mb_Bean tempUserDataBean;
		
	@GetMapping("/Mb_login")
	public String login(@ModelAttribute("tempUserDataBean") Mb_Bean tempUserDataBean,
						@RequestParam(value="fail", defaultValue = "false") boolean fail, Model model){
			
			model.addAttribute("fail", fail);

			//아직은 로그인하지 않았으므로 false로 설정
			//loginUserDataBean.setUserlogin(false);
			
			model.addAttribute("tempUserDataBean", tempUserDataBean);
			return "member/Mb_login";			
		}
			
	@PostMapping("/Mb_login_pro")
	public String login_pro(@Validated@ModelAttribute("tempUserDataBean") Mb_Bean tempUserDataBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "member/Mb_login";
		}
			
		mbService.getloginUserInfo(tempUserDataBean);
		
		if(loginUserDataBean.isMblogin() == true) {
			loginUserDataBean.setMblogin(true);
			return "member/Mb_login_success";
		}else {
			loginUserDataBean.setMblogin(false);
			return "member/Mb_login_fail";	
		}
	}
	
	@GetMapping("/Mb_insert")
	public String Mb_insert(@ModelAttribute("insert_mb_Bean") Mb_Bean insert_mb_Bean) {
		
		return "member/Mb_insert";
	}
	
	@PostMapping("/Mb_insert_pro")
	public String Mb_insert_pro(@Validated@ModelAttribute("insert_mb_Bean") Mb_Bean insert_mb_Bean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "member/Mb_insert";
		}			
		
		mbService.addUserInfo(insert_mb_Bean);
		
		return "member/Mb_insert_success";
	}
	
	@GetMapping("/Mb_update")
	public String modify(@ModelAttribute("modifyUserDataBean") Mb_Bean modifyUserDataBean) {
		
		mbService.getModifyUserInfo(modifyUserDataBean);
		
		return "member/Mb_update";
	}
	
	@PostMapping("/Mb_update_pro")
	public String modify_pro(@Validated@ModelAttribute("modifyUserDataBean") Mb_Bean modifyUserDataBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "member/Mb_update_pro";
		}			
		
		mbService.modifyUserInfo(modifyUserDataBean);
		
		return "member/Mb_update_success";
	}
	
	
	
	
	@GetMapping("/Mb_logout")
	public String logout() {
		
		loginUserDataBean.setMblogin(false);   
	
		return "member/Mb_logout";
	}
	
	@GetMapping("/Mb_not_login")
	public String not_login() {
			
		return "member/Mb_not_login";
	}
		
	//password check routine
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		Mb_Validator validator = new Mb_Validator();
		binder.addValidators(validator); 
	}
	
	// 
	
	
	
}
