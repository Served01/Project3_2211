package ezen.store.dao;

import java.util.List;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.Or_Bean;
import ezen.store.beans.Or_items;
import ezen.store.mapper.Or_Mapper;

@Repository
public class Or_DAO {
	
	@Autowired
	private Or_Mapper or_Mapper;
		
	
	
//	public void Or_insert(Or_Bean addOrderDataBean) {
//		or_Mapper.Or_insert(addOrderDataBean); 
//	}
	
	//구매 내역 정보 로드
//	public	List<Or_Bean> getOrInfo(String or_number) {
	//	return or_Mapper.getOrInfo(or_number);
//	}
	
	//select
	public	List<Or_Bean> OrList(String mb_id) {
		return or_Mapper.OrList(mb_id);
	}
	
	public List<Or_Bean> OrSelect(String or_number) {
		return or_Mapper.OrSelect(or_number);
	}
	
	public List<Or_Bean> getOrInfo(@Param("mb_id") String mb_id, @Param("or_number") String or_number){
		return or_Mapper.getOrInfo(mb_id, or_number);
	};
	
	//update
	public void UpdateOrPurchase(Or_Bean updateOrPurchase){
		or_Mapper.UpdateOrPurchase(updateOrPurchase);
		//return or_Mapper.OrUpdatePurchase(mb_id, or_number);
	}
	
	public void OrUpdateAfter(Or_Bean updateOrBean) {
		or_Mapper.OrUpdateAfter(updateOrBean);
	}
	
	public void UpdateOrInfo(Or_Bean updateOrBean) {
		or_Mapper.UpdateOrInfo(updateOrBean);
	}
	
	public Or_Bean UpdateOrBean(String mb_id, String or_number) {
		return or_Mapper.UpdateOrBean(mb_id, or_number);
	}
	
	public List<Or_Bean> UpdateOriBean(String or_number) {
		return or_Mapper.UpdateOriBean(or_number);
	}
	
	public Or_Bean DvSelect(String mb_id, String dv_pk) {
		return or_Mapper.DvSelect(mb_id, dv_pk);
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

	public void OriUpdateAfter(List<Or_Bean> updateOriBean) {
		or_Mapper.OriUpdateAfter(updateOriBean);
		
	}

	public List<Or_items> SelectBkQuantity(String or_number) {
		return or_Mapper.SelectBkQuantity(or_number);
	}

	
	public Or_Bean SelectBkPurchase(@Param("or_number") String or_number, @Param("bk_number") int bk_number) {
		return or_Mapper.SelectBkPurchase(or_number, bk_number);
	}
	
	public Or_Bean SelectBkAfter(@Param("or_number") String or_number, @Param("bk_number") int bk_number) {
		return or_Mapper.SelectBkAfter(or_number, bk_number);
	}

	public void UpdateBkQuantity(Or_Bean updateBkBean) {
		or_Mapper.UpdateBkQuantity(updateBkBean);
		
	}
	
//	public void Or_insert(String or_mbid, int or_bknumbers) {
//		or_Mapper.Or_insert(or_mbid, or_bknumbers); 
//	}
	
	
	/*
	public int getContentCnt(String or_mbid) {
		return or_Mapper.getContentCnt(or_mbid);
	}
	*/
}
