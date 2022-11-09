package ezen.store.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.store.beans.Dv_Bean;
import ezen.store.mapper.Dv_Mapper;

@Repository
public class Dv_DAO {
	
	@Autowired
	private Dv_Mapper dv_Mapper;
	
	//배송지 리스트
	public List<Dv_Bean> getDvList(String Dv_id){
		return dv_Mapper.getDvList(Dv_id);
		
	}
	
	//배송지 입력
	public void addDvInfo(Dv_Bean insertDv_Bean) {
		dv_Mapper.addDvInfo(insertDv_Bean);
	}
	
	//배송지 수정
	public Dv_Bean updateDv_Bean(String dv_id) {
		return dv_Mapper.updateDv_Bean(dv_id);
	}
	
	public void updateDvInfo(Dv_Bean updateDv_Bean) {
		dv_Mapper.updateDvInfo(updateDv_Bean);
	}
		
}
