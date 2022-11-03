package ezen.store.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.store.beans.CartDataBean;
import ezen.store.dao.Ca_DAO;

@Service
public class Ca_Service {
	
	@Autowired
	private Ca_DAO ca_DAO;
	
	@Autowired
	private CartDataBean ca_Bean;
		
	public boolean checkUserIdExist(String user_id) {
		
		String user_name = ca_DAO.checkUserIdExist(user_id);
		
		if(user_name == null) {
			return true;
		}else {
			return false;		
		}			
	}
	
	public void addUserInfo(CartDataBean joinUserDataBean) {
		
		ca_DAO.addUserInfo(joinUserDataBean); 
	}
	//
	public void  getCa_select(CartDataBean tempCa_Bean) {
		//              
		CartDataBean tempCa_Bean2 = ca_DAO.getCa_select(tempCa_Bean);
		
		if(tempCa_Bean2 != null) {
			ca_Bean.setCa_number(tempCa_Bean2.getCa_number()); 
			ca_Bean.setCa_mbid(tempCa_Bean2.getCa_mbid()); 
			ca_Bean.setCa_bknumber(tempCa_Bean2.getCa_bknumber());
			ca_Bean.setCa_bkcount(tempCa_Bean2.getCa_bkcount()); 
			ca_Bean.setUserlogin(true);
		}		
	}
	
	/*
	public CartDataBean getModifyUserInfo(CartDataBean modifyUserDataBean) {	
		CartDataBean tempModifyUserDataBean = ca_DAO.getModifyUserInfo(ca_Bean.getCa_number());
		
		modifyUserDataBean.setCa_mbid(tempModifyUserDataBean.getCa_mbid());
		modifyUserDataBean.setUser_idx(tempModifyUserDataBean.getUser_idx());
		modifyUserDataBean.setUser_name(tempModifyUserDataBean.getUser_name()); 		
		
		return tempModifyUserDataBean; 		
	}
	*/
}
