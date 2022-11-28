package ezen.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import ezen.store.beans.Or_Bean;
import ezen.store.beans.Or_items;
import ezen.store.beans.PageCountBean;
import ezen.store.dao.Or_DAO;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class Or_Service {
	
	@Autowired
	private Or_DAO or_DAO;	
	
	@Value("${page.orlistcnt}")
	private int page_listcnt;  
	//페이지
	@Value("${page.orpagButtonCnt}")
	private int page_pageButtonCnt;
	
	public PageCountBean getOrCount(String mb_id, int currentPage) {
		
		int content_cnt = or_DAO.getOrCount(mb_id);
		
		PageCountBean pageCountBean = new PageCountBean(content_cnt, currentPage, page_listcnt, page_pageButtonCnt);
		
		return pageCountBean;
		
	}
	
	public PageCountBean getOrItemCount(String or_number, int currentPage) {
		
		int content_cnt = or_DAO.getOrItemCount(or_number);
		
		PageCountBean pageCountBean = new PageCountBean(content_cnt, currentPage, page_listcnt, page_pageButtonCnt);
		
		return pageCountBean;
		
	}
	
	
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
			//return or_DAO.OrUpdatePurchase(mb_id, or_number);
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
//		public void Or_update(int or_bknumbers) {
//			or_DAO.Or_update(or_bknumbers);
//		}
		
		
		
//		public void Or_insert(String or_mbid,int or_bknumbers) {
//			or_DAO.Or_insert(or_mbid,or_bknumbers);
//		}
		
//		public void addCartStuff(String ca_mbid) {
//			ca_DAO.addCartStuff(ca_mbid);
//		}
		
		
		/*
		public PageCountBean getContentCnt(String or_mbid,int currentPage) {
			int content_cnt = or_DAO.getContentCnt(or_mbid);
			
			PageCountBean pageCountBean = new PageCountBean(content_cnt, currentPage, page_listcnt, page_pageButtonCnt);
			return pageCountBean;
		}
		*/
	
}
