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
	private Mb_Bean insert_mb_Bean;
	
	@Autowired
	private Mb_Bean login_mb_Bean;
	
	@SuppressWarnings("unused")
	@Autowired
	private Mb_Bean temp_mb_Bean;
	
	@GetMapping("/list")
	public String list(@RequestParam("mb_idx") int mb_idx, Model model) {
		
		model.addAttribute("mb_idx", mb_idx);
		
		List<Mb_Bean> memberlist = mbService.getMbList(mb_idx);
		model.addAttribute("memberlist", memberlist);
		
		return "member/Mb_list";
	}
	
	
		
	@GetMapping("/Mb_login")
	public String Mb_login(@ModelAttribute("temp_mb_Bean") Mb_Bean temp_mb_Bean,
						@RequestParam(value="fail", defaultValue = "false") boolean fail, Model model){
			
			model.addAttribute("fail", fail);

			//�븘吏곸� 濡쒓렇�씤�븯吏� �븡�븯�쑝誘�濡� false濡� �꽕�젙
			//loginUserDataBean.setUserlogin(false);
			
			model.addAttribute("temp_mb_Bean", temp_mb_Bean);
			return "member/Mb_login";			
		}
			
	@PostMapping("/Mb_login_pro")
	public String Mb_login_pro(@Validated@ModelAttribute("temp_mb_Bean") Mb_Bean temp_mb_Bean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "member/Mb_login";
		}
			
		mbService.getloginUserInfo(temp_mb_Bean);
		
		if(login_mb_Bean.isMblogin() == true) {
			login_mb_Bean.setMblogin(true);
			return "member/Mb_login_success";
		}else {
			login_mb_Bean.setMblogin(false);
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
	public String Mb_update(@ModelAttribute("update_mb_Bean") Mb_Bean update_mb_Bean) {
		
		mbService.getModifyUserInfo(update_mb_Bean);
		
		return "member/Mb_update";
	}
	
	@PostMapping("/Mb_update_pro")
	public String Mb_update_pro(@Validated@ModelAttribute("update_mb_Bean") Mb_Bean update_mb_Bean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "member/Mb_update_pro";
		}			
		
		mbService.modifyUserInfo(update_mb_Bean);
		
		return "member/Mb_update_success";
	}
	
	
	
	
	@GetMapping("/Mb_logout")
	public String Mb_logout() {
		
		login_mb_Bean.setMblogin(false);   
	
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
//	@GetMapping("/Mb_list")
//	public String Mb_list(@ModelAttribute("update_mb_Bean") Mb_Bean update_mb_Bean) {
//		
//		mbService.getListUserInfo(update_mb_Bean);
//		
//		return "member/Mb_list";
//	}
	
	
}

