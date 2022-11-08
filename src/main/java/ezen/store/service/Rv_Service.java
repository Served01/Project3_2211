package ezen.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.store.beans.Rv_Bean;
import ezen.store.dao.Rv_DAO;

@Service
public class Rv_Service {

	@Autowired
	private Rv_DAO rvDAO;
	
	//리뷰 리스트
	public List<Rv_Bean> getRvList(int rv_bknumber){
		
		return rvDAO.getRvList(rv_bknumber);
		
	}
	
	public void insertReview(Rv_Bean insertRvBean) {
		
		rvDAO.insertReview(insertRvBean);
		
	}
	
}
