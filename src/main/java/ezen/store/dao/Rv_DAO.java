package ezen.store.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.store.beans.Rv_Bean;
import ezen.store.mapper.Rv_Mapper;

@Repository
public class Rv_DAO {
	
	@Autowired
	private Rv_Mapper rvMapper;
	
	// 리뷰 리스트
	public List<Rv_Bean> getRvList(int rv_bknumber){
		
		return rvMapper.getRvList(rv_bknumber);
		
	}

	// 리뷰 작성
	public void insertReview(Rv_Bean insertRvBean) {
		
		rvMapper.insertReview(insertRvBean);
		
	}
	
	// 수정 대상 리뷰 정보 불러오기
	public Rv_Bean updatecheckRvBean(int rv_number) {
		
		return rvMapper.updatecheckRvBean(rv_number);
		
	}
	
	// 리뷰 수정
	public void updateReview(Rv_Bean updateRvBean) {
		
		rvMapper.updateReview(updateRvBean);
		
	}
	
	// 리뷰 삭제
	public void deleteReview(int rv_number) {
		
		rvMapper.deleteReview(rv_number);
		
	}
	
	
}
