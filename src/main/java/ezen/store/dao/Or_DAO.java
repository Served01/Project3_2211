package ezen.store.dao;

import java.util.List;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.Or_Bean;
import ezen.store.mapper.Or_Mapper;

@Repository
public class Or_DAO {
	
	@Autowired
	private Or_Mapper or_Mapper;
		
	public	List<Or_Bean> OrList(String or_mbid) {
		return or_Mapper.OrList(or_mbid);
	}
	
//	public void Or_insert(Or_Bean addOrderDataBean) {
//		or_Mapper.Or_insert(addOrderDataBean); 
//	}
	
	//구매 내역 정보 로드
//	public	List<Or_Bean> getOrInfo(String or_number) {
	//	return or_Mapper.getOrInfo(or_number);
//	}
	public List<Or_Bean> OrSelect(String or_number) {
		return or_Mapper.OrSelect(or_number);
	}
	
	public List<Or_Bean> getOrInfo(@Param("or_mbid") String or_mbid, @Param("or_number") String or_number){
		return or_Mapper.getOrInfo(or_mbid, or_number);
	};
	
	public List<Or_Bean> OrUpdatePurchase(@Param("or_mbid") String or_mbid, @Param("or_number") String or_number){
		return or_Mapper.OrUpdatePurchase(or_mbid, or_number);
	}
	
	
	public void OrUpdateAfter(Or_Bean updateOrBean) {
		or_Mapper.OrUpdateAfter(updateOrBean);
	}
	
	public void UpdateOrInfo(Or_Bean updateOrBean) {
		or_Mapper.UpdateOrInfo(updateOrBean);
	}
	public Or_Bean UpdateOrBean(String or_mbid, String or_number) {
		return or_Mapper.UpdateOrBean(or_mbid, or_number);
	}
//	public void UpdateOrBean(String or_mbid, String or_number) {
//		or_Mapper.UpdateOrInfo(or_mbid, or_number);
//	}
//	public List<Or_Bean> OrAfter(@Param("or_mbid") String or_mbid, @Param("or_number") String or_number, @Param("or_status") String or_status){
//		return or_Mapper.OrAfter(or_mbid, or_number, or_status);
//	}
	//내역 정보 수정
//	public void Or_update(int user_idx) {				
//		or_Mapper.Or_update(user_idx); 		
//	}
	
//	public void Or_insert(String or_mbid, int or_bknumbers) {
//		or_Mapper.Or_insert(or_mbid, or_bknumbers); 
//	}
	
	
	/*
	public int getContentCnt(String or_mbid) {
		return or_Mapper.getContentCnt(or_mbid);
	}
	*/
}
