package kr.co.ezen.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ezen.beans.Mb_Bean;
import kr.co.ezen.dao.Mb_DAO;

@Service
public class Mb_Service {
	
	@Autowired
	private Mb_DAO mbDAO;
	@Autowired
	private Mb_Bean loginUserDataBean;
		
	public boolean checkUserIdExist(String mb_id) {
		
		String mb_name = mbDAO.checkUserIdExist(mb_id);
		
		if(mb_name == null) {
			return true;
		}else {
			return false;		
		}			
	}
	
	public void addUserInfo(Mb_Bean insert_mb_Bean) {
		
		mbDAO.addUserInfo(insert_mb_Bean); 
	}
	//
	public void  getloginUserInfo(Mb_Bean tempUserDataBean) {
		//              
		Mb_Bean tempUserDataBean2 = mbDAO.getloginUserInfo(tempUserDataBean);
		
		if(tempUserDataBean2 != null) {
			loginUserDataBean.setUser_idx(tempUserDataBean2.getUser_idx());
			loginUserDataBean.setMb_id(tempUserDataBean2.getMb_id()); 
			loginUserDataBean.setMb_pw(tempUserDataBean2.getMb_pw());
			loginUserDataBean.setMb_name(tempUserDataBean2.getMb_name()); 
			loginUserDataBean.setMblogin(true);
		}		
	}
	
	//
	public Mb_Bean getModifyUserInfo(Mb_Bean modifyUserDataBean) {	
		Mb_Bean tempModifyUserDataBean = mbDAO.getModifyUserInfo(loginUserDataBean.getUser_idx());
		
		modifyUserDataBean.setMb_id(tempModifyUserDataBean.getMb_id());
		modifyUserDataBean.setUser_idx(tempModifyUserDataBean.getUser_idx());
		modifyUserDataBean.setMb_name(tempModifyUserDataBean.getMb_name()); 		
		
		return tempModifyUserDataBean; 		
	}
	
	// 비번 수정
	public void modifyUserInfo(Mb_Bean modifyUserDataBean) {
		modifyUserDataBean.setUser_idx(loginUserDataBean.getUser_idx()); 
		
		mbDAO.modifyUserInfo(modifyUserDataBean);
		
	}
	
	
	
	
}
