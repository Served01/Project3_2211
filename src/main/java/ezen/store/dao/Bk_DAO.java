package ezen.store.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.store.beans.Bk_Bean;
import ezen.store.mapper.Bk_Mapper;

@Repository
public class Bk_DAO {
	
	@Autowired
	private Bk_Mapper bk_Mapper;
	
	//책 일련번호 중복확인 DAO
	public String CheckBkNumExist(int bk_number){				
		return bk_Mapper.CheckBkNumExist(bk_number);		
	}
	
	//책 정보 입력 DAO
	public void addBkInfo(Bk_Bean InsertBkBean) {
		
		bk_Mapper.addBkInfo(InsertBkBean); 
	}


}
