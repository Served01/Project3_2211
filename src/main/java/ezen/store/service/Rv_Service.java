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
	
	//리뷰 입력
	public void insertReview(Rv_Bean insertRvBean) {
		
		rvDAO.insertReview(insertRvBean);
		
	}
	
	//수정 리뷰 정보 불러오기
	public Rv_Bean updatecheckRvBean(int rv_number) {
		
		return rvDAO.updatecheckRvBean(rv_number);
		
	}
	
	//리뷰 수정
	public void updateReview(Rv_Bean updateRvBean) {
		
		rvDAO.updateReview(updateRvBean);
		
	}
	
	
}
