package ezen.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import ezen.store.beans.Or_Bean;
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
		public List<Or_Bean> OrUpdatePurchase(String mb_id, String or_number){
			return or_DAO.OrUpdatePurchase(mb_id, or_number);
		}
		
//		public List<Or_Bean> OrAfter(String or_mbid, String or_number, String or_status){
//			return or_DAO.OrAfter(or_mbid, or_number, or_status);
//		}
		
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
