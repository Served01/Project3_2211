package ezen.store.dao;

import org.springframework.beans.factory.annotation.Autowired;

import ezen.store.beans.CartDataBean;
import ezen.store.beans.OrderDataBean;
import ezen.store.mapper.Ca_Mapper;
import ezen.store.mapper.Or_Mapper;

public class Or_DAO {
	@Autowired
	private Or_Mapper or_Mapper;
	
	public String checkUserIdExist(String user_id){
				
		return or_Mapper.checkUserIdExist(user_id);		
	}
	
	public void addOrderInfo(OrderDataBean joinOrderDataBean) {
		
		or_Mapper.addOrderInfo(joinOrderDataBean); 
	}
	
	//구매 내역 정보 로드
	public OrderDataBean getOr_select(OrderDataBean tempOr_Bean) {
		
		return or_Mapper.getOr_select(tempOr_Bean);
	}
	
	//카트 정보 수정
	public OrderDataBean getOr_update(int user_idx) {				
		return or_Mapper.getOr_update(user_idx); 		
	}
	
	// 비번 수정
	public void modifyUserInfo(CartDataBean modifyUserDataBean) {
		or_Mapper.modifyUserInfo(modifyUserDataBean);
		
	}
}
