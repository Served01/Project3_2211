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
	private Mb_Bean login_mb_Bean;
		
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
	public void  getloginUserInfo(Mb_Bean temp_mb_Bean) {
		//              
		Mb_Bean temp_mb_Bean2 = mbDAO.getloginUserInfo(temp_mb_Bean);
		
		if(temp_mb_Bean2 != null) {
			login_mb_Bean.setMb_idx(temp_mb_Bean2.getMb_idx());
			login_mb_Bean.setMb_id(temp_mb_Bean2.getMb_id()); 
			login_mb_Bean.setMb_pw(temp_mb_Bean2.getMb_pw());
			login_mb_Bean.setMb_name(temp_mb_Bean2.getMb_name()); 
			login_mb_Bean.setMblogin(true);
		}		
	}
	
	//
	public Mb_Bean getModifyUserInfo(Mb_Bean update_mb_Bean) {	
		Mb_Bean tempModifyUserDataBean = mbDAO.getModifyUserInfo(login_mb_Bean.getMb_idx());
		
		update_mb_Bean.setMb_id(tempModifyUserDataBean.getMb_id());
		update_mb_Bean.setMb_idx(tempModifyUserDataBean.getMb_idx());
		update_mb_Bean.setMb_name(tempModifyUserDataBean.getMb_name()); 		
		
		return tempModifyUserDataBean; 		
	}
	
	// 鍮꾨쾲 �닔�젙
	public void modifyUserInfo(Mb_Bean update_mb_Bean) {
		update_mb_Bean.setMb_idx(login_mb_Bean.getMb_idx()); 
		
		mbDAO.modifyUserInfo(update_mb_Bean);
		
	}
	
	//
	public Mb_Bean getListUserInfo(Mb_Bean update_mb_Bean) {	
		Mb_Bean tempModifyUserDataBean = mbDAO.getModifyUserInfo(login_mb_Bean.getMb_idx());
		
		update_mb_Bean.setMb_idx(tempModifyUserDataBean.getMb_idx());
		update_mb_Bean.setMb_id(tempModifyUserDataBean.getMb_id());
		update_mb_Bean.setMb_name(tempModifyUserDataBean.getMb_name()); 		
		update_mb_Bean.setMb_email(tempModifyUserDataBean.getMb_name()); 		
		update_mb_Bean.setMb_tel(tempModifyUserDataBean.getMb_name()); 		
		
		return tempModifyUserDataBean; 		
	}
	//전체회원 목록 리스트
		public List<Mb_Bean> getMbList(int mb_idx){
		
		return mbDAO.getMbList(mb_idx);
		
	}
	
	
	
}

