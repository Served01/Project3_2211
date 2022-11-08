package ezen.store.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import ezen.store.beans.Ca_Bean;
import ezen.store.beans.CartDataBean;
import ezen.store.beans.Or_Bean;
import ezen.store.mapper.Ca_Mapper;
import ezen.store.mapper.Or_Mapper;

public class Or_DAO {
	@Autowired
	private Or_Mapper or_Mapper;
		
	public	List<Or_Bean> getOrderInfo(String or_mbid) {
		return or_Mapper.getOrderInfo(or_mbid);
	}
	
	
	
	public void Or_insert(Or_Bean addOrderDataBean) {
		
		or_Mapper.Or_insert(addOrderDataBean); 
	}
	
	//구매 내역 정보 로드
	public void Or_select(String user_idx) {
		or_Mapper.Or_select(user_idx);
	}
	
	//내역 정보 수정
	public void Or_update(int user_idx) {				
		or_Mapper.Or_update(user_idx); 		
	}
	
	// 비번 수정
	public void modifyUserInfo(CartDataBean modifyUserDataBean) {
		or_Mapper.modifyUserInfo(modifyUserDataBean);
		
	}



	public void Or_insert(String ca_mbid, int ca_bknumbers) {
		// TODO Auto-generated method stub
		or_Mapper.Or_insert(ca_mbid, ca_bknumbers); 
	}
}
