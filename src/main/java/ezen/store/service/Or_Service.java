package ezen.store.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import ezen.store.beans.Ca_Bean;
import ezen.store.beans.Or_Bean;
import ezen.store.dao.Or_DAO;
import ezen.store.beans.UserDataBean;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class Or_Service {

	
	@Autowired
	private Or_DAO or_DAO;	
	
	
	//카트 열람
		public	List<Or_Bean> getOrderInfo(String or_mbid) {
			return or_DAO.getOrderInfo(or_mbid);
		}
		
		public void Or_update(int ca_bknumbers) {
			or_DAO.Or_update(ca_bknumbers);
		}
		
		
		public void Or_insert(String ca_mbid,int ca_bknumbers) {
			or_DAO.Or_insert(ca_mbid,ca_bknumbers);
		}
//		public void addCartStuff(String ca_mbid) {
//			ca_DAO.addCartStuff(ca_mbid);
//		}
	
}
