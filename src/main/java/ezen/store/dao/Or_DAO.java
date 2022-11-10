package ezen.store.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.store.beans.Or_Bean;
import ezen.store.mapper.Or_Mapper;

@Repository
public class Or_DAO {
	
	@Autowired
	private Or_Mapper or_Mapper;
		
	public	List<Or_Bean> getOrderInfo(String or_mbid) {
		return or_Mapper.getOrderInfo(or_mbid);
	}
	
//	public void Or_insert(Or_Bean addOrderDataBean) {
//		or_Mapper.Or_insert(addOrderDataBean); 
//	}
	
	//구매 내역 정보 로드
//	public void Or_select(String user_idx) {
//		or_Mapper.Or_select(user_idx);
//	}
	
	//내역 정보 수정
//	public void Or_update(int user_idx) {				
//		or_Mapper.Or_update(user_idx); 		
//	}
	
//	public void Or_insert(String or_mbid, int or_bknumbers) {
//		or_Mapper.Or_insert(or_mbid, or_bknumbers); 
//	}
}
