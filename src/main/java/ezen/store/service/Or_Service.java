package ezen.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import ezen.store.beans.Or_Bean;
import ezen.store.beans.PageCountBean;
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
	
	//카트 열람
		public	List<Or_Bean> OrList(String or_mbid) {
			return or_DAO.OrList(or_mbid);
		}
		
		
		String or_mbid = "or_mbid";
		String or_number = "or_number";
		
		public List<Or_Bean> getOrInfo(String or_mbid, String or_number){
			return or_DAO.getOrInfo(or_mbid, or_number);
		}
		
//		public	List<Or_Bean> getOrInfo(String or_number) {
	//		return or_DAO.getOrInfo(or_number);
		//}
		public	List<Or_Bean> OrSelect(String or_number) {
			return or_DAO.OrSelect(or_number);
		}
		
		
		public List<Or_Bean> OrPurchase(String or_mbid, String or_number){
			return or_DAO.OrPurchase(or_mbid, or_number);
		}
		
//		public List<Or_Bean> OrAfter(String or_mbid, String or_number, String or_status){
//			return or_DAO.OrAfter(or_mbid, or_number, or_status);
//		}
		
		public void OrAfter(Or_Bean updateOrBean) {
			or_DAO.OrAfter(updateOrBean);
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
