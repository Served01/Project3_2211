package ezen.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import ezen.store.beans.Or_Bean;
import ezen.store.beans.Or_items;
import ezen.store.dao.Or_DAO;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class Or_Service {
	
	@Autowired
	private Or_DAO or_DAO;	
	
	/*
	@Value("${page.listcnt}")
	private int page_listcnt;  
	//페이지
	@Value("${page.pagButtonCnt}")
	private int page_pageButtonCnt;
	*/
	
	//주문 목록 select
	public	List<Or_Bean> OrList(String mb_id) {
			
		return or_DAO.OrList(mb_id);
		
	}
			
	String mb_id = "mb_id";
	String or_number = "or_number";
		
	//주문 열람 select
	public List<Or_Bean> getOrInfo(String mb_id, String or_number){
			
		return or_DAO.getOrInfo(mb_id, or_number);
		
	}
	
	public	List<Or_Bean> OrSelect(String or_number) {
			
		return or_DAO.OrSelect(or_number);
		
	}
			
	//주문 결제 
	public void UpdateOrPurchase(Or_Bean updateOrPurchase){
			
		or_DAO.UpdateOrPurchase(updateOrPurchase);
			
	}

	//주문 변경 update
	public void OrUpdateAfter(Or_Bean updateOrBean) {
			
		or_DAO.OrUpdateAfter(updateOrBean);
		
	}
		
	public void UpdateOrInfo(Or_Bean updateOrBean) {
			
		or_DAO.UpdateOrInfo(updateOrBean);
		
	}
	
	public Or_Bean UpdateOrBean(String mb_id, String or_number) {
			
		return or_DAO.UpdateOrBean(mb_id, or_number);
		
	}
		
	public List<Or_Bean> UpdateOriBean(String or_number) {
		
		return or_DAO.UpdateOriBean(or_number);
		
	}
		
	public void OriUpdateAfter(List<Or_Bean> updateOriBean) {
			
		or_DAO.OriUpdateAfter(updateOriBean);
			
	}

	public List<Or_items> SelectBkQuantity(String or_number) {
			
		return or_DAO.SelectBkQuantity(or_number);
		
	}
		
	public Or_Bean SelectBkPurchase(String or_number, int bk_number) {
			
		return or_DAO.SelectBkPurchase(or_number, bk_number);
		
	}
		
	public Or_Bean SelectBkAfter(String or_number, int bk_number) {
			
		return or_DAO.SelectBkAfter(or_number, bk_number);
	
	}
		
	public void UpdateBkQuantity(Or_Bean updateBkBean) {
			
		or_DAO.UpdateBkQuantity(updateBkBean);
	
	}
	
	public Or_Bean DvSelect(String mb_id, String dv_pk) {
		
		return or_DAO.DvSelect(mb_id, dv_pk);
		
	}

}
