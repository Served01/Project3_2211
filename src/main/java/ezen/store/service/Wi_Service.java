package ezen.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import ezen.store.beans.Ca_Bean;
import ezen.store.beans.Wi_Bean;
import ezen.store.dao.Ca_DAO;
import ezen.store.dao.Wi_DAO;
@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class Wi_Service {
	
	@Autowired
	private Wi_DAO wi_DAO;
	
	//카트 열람
	public	List<Wi_Bean> getWishInfo(String wi_mbid) {
		return wi_DAO.getWishInfo(wi_mbid);
	}
	
	public void delwish(String wi_mbid,int wi_bknumbers) {
		wi_DAO.delwish(wi_mbid,wi_bknumbers);
	}
	public void delwishAll(String wi_mbid) {
		wi_DAO.delwishAll(wi_mbid);
	}
	
	public void addWishStuff(String wi_mbid,int wi_bknumbers) {
		wi_DAO.addWishStuff(wi_mbid,wi_bknumbers);
	}
}
