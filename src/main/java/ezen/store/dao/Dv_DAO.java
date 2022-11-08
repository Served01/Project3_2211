package ezen.store.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.store.beans.Dv_Bean;
import ezen.store.mapper.Dv_Mapper;

@Repository
public class Dv_DAO {
	
	@Autowired
	private Dv_Mapper dv_Mapper;
	
	//배송지 입력
	public void addDvInfo(Dv_Bean insertDv_Bean) {
		dv_Mapper.addDvInfo(insertDv_Bean);
	}
	
	//배송지 수정
	public void updateDvInfo(Dv_Bean updateDv_Bean) {
		dv_Mapper.updateDvInfo(updateDv_Bean);
	}
		
}
