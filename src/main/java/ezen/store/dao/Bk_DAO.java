package ezen.store.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.store.beans.Bk_Bean;
import ezen.store.mapper.Bk_Mapper;

@Repository
public class Bk_DAO {
	
	@Autowired
	private Bk_Mapper bk_Mapper;
	
	public String checkBk_numExist(String bk_number){
		
		return bk_Mapper.checkBk_numExist(bk_number);		
	}
	
	public void addBk_info(Bk_Bean insert_bk_Bean) {
		
		bk_Mapper.addBk_info(insert_bk_Bean); 
	}


}
