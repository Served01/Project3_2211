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
	private Or_DAO orDAO;	
	
	//카트 열람
		public	List<Or_Bean> getOrderInfo(String or_mbid) {
			return orDAO.getOrderInfo(or_mbid);
		}
		
//		public	List<Or_Bean> OrSelect(String or_number) {
		public	List<Or_Bean> OrSelect(String or_number) {
			return orDAO.OrSelect(or_number);
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
	
}
