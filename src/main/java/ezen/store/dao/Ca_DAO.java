package ezen.store.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.store.beans.Ca_Bean;
import ezen.store.mapper.Ca_Mapper;

@Repository
public class Ca_DAO {
	
	@Autowired
	private Ca_Mapper ca_Mapper;
	
	public	List<Ca_Bean> getCartInfo(String ca_mbid) {
		return ca_Mapper.getCartInfo(ca_mbid);
	}
	
	public void delcart(int ca_bknumbers) {
		ca_Mapper.delcart(ca_bknumbers);
	}
	
	public void delcartAll(String ca_mbid) {
		ca_Mapper.delcartAll(ca_mbid);
	}
	
	public void addCartStuff(String ca_mbid,int ca_bknumbers) {
		ca_Mapper.addCartStuff(ca_mbid,ca_bknumbers);
	}
//	public void addCartStuff(String ca_mbid) {
//		ca_Mapper.addCartStuff(ca_mbid);
//	}
}
