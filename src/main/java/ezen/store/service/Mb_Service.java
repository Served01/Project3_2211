package ezen.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.store.beans.Mb_Bean;
import ezen.store.dao.Mb_DAO;

@Service
public class Mb_Service {
	
	@Autowired
	private Mb_DAO mbDAO;
	@Autowired
	private Mb_Bean loginMbBean;
	
	//아이디 중복 체크??
	public boolean checkUserIdExist(String mb_id) {
		
		String mb_name = mbDAO.checkUserIdExist(mb_id);
		
		if(mb_name == null) {
			return true;
		}else {
			return false;		
		}			
	}
	
	public void addUserInfo(Mb_Bean insertMbBean) {
		
		mbDAO.addUserInfo(insertMbBean); 
	}
	//로그인 정보???
	public void  getloginUserInfo(Mb_Bean tempMbBean) {
		//              
		Mb_Bean tempMbBean2 = mbDAO.getloginUserInfo(tempMbBean);
		
		if(tempMbBean != null) {
			loginMbBean.setMb_id(tempMbBean2.getMb_id());
			loginMbBean.setMb_pw(tempMbBean2.getMb_pw());
			loginMbBean.setMb_name(tempMbBean2.getMb_name()); 
			loginMbBean.setMblogin(true);
		}		
	}
	
	//
	public Mb_Bean getModifyUserInfo(Mb_Bean updateMbBean) {	
		Mb_Bean tempModifyUserDataBean = mbDAO.getModifyUserInfo(loginMbBean.getMb_id());
		
		updateMbBean.setMb_id(tempModifyUserDataBean.getMb_id());
		updateMbBean.setMb_name(tempModifyUserDataBean.getMb_name()); 		
		
		return tempModifyUserDataBean; 		
	}
	
	// 
	public void modifyUserInfo(Mb_Bean updateMbBean) {
		updateMbBean.setMb_id(loginMbBean.getMb_id()); 
		
		mbDAO.modifyUserInfo(updateMbBean);
		
	}
	
	//
	public Mb_Bean getListUserInfo(Mb_Bean updateMbBean) {	
		Mb_Bean tempModifyUserDataBean = mbDAO.getModifyUserInfo(loginMbBean.getMb_id());
		
		updateMbBean.setMb_id(tempModifyUserDataBean.getMb_id());
		updateMbBean.setMb_name(tempModifyUserDataBean.getMb_name()); 		
		updateMbBean.setMb_email(tempModifyUserDataBean.getMb_email()); 		
		updateMbBean.setMb_tel(tempModifyUserDataBean.getMb_tel()); 		
		
		return tempModifyUserDataBean; 		
	}
	
	//전체회원 목록 리스트
		public List<Mb_Bean> getMbList(String mb_id){
		
		return mbDAO.getMbList(mb_id);
		
	}
		
	//회원 상세보기
	public Mb_Bean getMemberInfo(String mb_id) {
			  
		 return mbDAO.getMemberInfo(mb_id); 
	}
		
	
}

