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
	//선택장바구니삭제
	public void delcart(String ca_mbid,int ca_bknumbers) {
		ca_Mapper.delcart(ca_mbid,ca_bknumbers);
	}
	//장바구니전부삭제
	public void delcartAll(String ca_mbid) {
		ca_Mapper.delcartAll(ca_mbid);
	}
	
	//장바구니추가
	public void addCartStuff(String ca_mbid,int ca_bknumbers) {
		ca_Mapper.addCartStuff(ca_mbid,ca_bknumbers);
	}
	
	//수량
	public void plusBookCount(String ca_mbid,int ca_bknumbers) {
		ca_Mapper.plusBookCount(ca_mbid, ca_bknumbers);
	}
	
	public void minusBookCount(String ca_mbid,int ca_bknumbers) {
		ca_Mapper.minusBookCount(ca_mbid, ca_bknumbers);
	}
	
	//oder
	public void createOderInfo(String or_number, String ca_mbid) {
		ca_Mapper.createOderInfo(or_number, ca_mbid);
	}
	public void insertOderItems(String or_number,int ca_bknumbers,String ca_mbid) {
		ca_Mapper.insertOderItems(or_number, ca_bknumbers,ca_mbid);
	}
}
