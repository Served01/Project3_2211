package ezen.store.dao;

import org.springframework.beans.factory.annotation.Autowired;

import ezen.store.beans.CartDataBean;
import ezen.store.mapper.Ca_Mapper;

public class Ca_DAO {
	
	@Autowired
	private Ca_Mapper ca_Mapper;
	
	public String checkUserIdExist(String user_id){
				
		return ca_Mapper.checkUserIdExist(user_id);		
	}
	
	public void addUserInfo(CartDataBean joinUserDataBean) {
		
		ca_Mapper.addUserInfo(joinUserDataBean); 
	}
	
	//카트 정보 로드
	public CartDataBean getCa_select(CartDataBean tempCa_Bean) {
		
		return ca_Mapper.getCa_select(tempCa_Bean);
	}
	
	//카트 정보 수정
	public CartDataBean getCa_update(int user_idx) {				
		return ca_Mapper.getCa_update(user_idx); 		
	}
	
	// 비번 수정
	public void modifyUserInfo(CartDataBean modifyUserDataBean) {
		ca_Mapper.modifyUserInfo(modifyUserDataBean);
		
	}
}
