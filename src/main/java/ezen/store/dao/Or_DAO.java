package ezen.store.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ezen.store.beans.Or_Bean;
import ezen.store.beans.Or_items;
import ezen.store.mapper.Or_Mapper;

@Repository
public class Or_DAO {
	
	@Autowired
	private Or_Mapper or_Mapper;
		
	
	//주문 목록 개수
	public int getOrCount(String mb_id) {
		return or_Mapper.getOrCount(mb_id);
	}
	
	public int getOrItemCount(String or_number) {
		return or_Mapper.getOrItemCount(or_number);
	}
	
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
	
	public Or_Bean UpdateOrBean(String mb_id, String or_number) {
		return or_Mapper.UpdateOrBean(mb_id, or_number);
	}
	
	public List<Or_Bean> UpdateOriBean(String or_number) {
		return or_Mapper.UpdateOriBean(or_number);
	}
	
	public Or_Bean DvSelect(String mb_id, String dv_pk) {
		return or_Mapper.DvSelect(mb_id, dv_pk);
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
