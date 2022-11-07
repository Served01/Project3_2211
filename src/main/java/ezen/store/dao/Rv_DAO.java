package ezen.store.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.store.beans.Rv_Bean;
import ezen.store.mapper.Rv_Mapper;

@Repository
public class Rv_DAO {
	
	@Autowired
	private Rv_Mapper rv_Mapper;
	
	// 리뷰 리스트
	public List<Rv_Bean> getRvList(int rv_bknumber){
		
		return rv_Mapper.getRvList(rv_bknumber);
		
	}

}
