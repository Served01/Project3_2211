package ezen.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import ezen.store.beans.Ca_Bean;
import ezen.store.dao.Ca_DAO;
@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class Ca_Service {
	
	@Autowired
	private Ca_DAO ca_DAO;
	
	//카트 열람
	public	List<Ca_Bean> getCartInfo(String ca_mbid) {
		return ca_DAO.getCartInfo(ca_mbid);
	}
	
	public void delcart(int ca_bknumbers) {
		ca_DAO.delcart(ca_bknumbers);
	}
	public void delcartAll(String ca_mbid) {
		ca_DAO.delcartAll(ca_mbid);
	}
	
	public void addCartStuff(String ca_mbid,int ca_bknumbers) {
		ca_DAO.addCartStuff(ca_mbid,ca_bknumbers);
	}
//	public void addCartStuff(String ca_mbid) {
//		ca_DAO.addCartStuff(ca_mbid);
//	}
}
