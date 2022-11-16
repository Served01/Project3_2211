package ezen.store.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.store.beans.Bk_Bean;
import ezen.store.beans.Bk_Number;
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
	
	//해당 책 평점 평균
	public double getBkScore(int bk_number) {
		return bk_Mapper.getBkScore(bk_number); 
	}
	 
	//책 상세 정보
	public Bk_Bean getBkInfo(int bk_number) {
		  
		return bk_Mapper.getBkInfo(bk_number); 
	}
	
	//책 정보 수정
	public void updateBook(Bk_Bean updateBkBean) {
		bk_Mapper.updateBkBean(updateBkBean);
	}

	//책 번호 리스트
	public List<Bk_Number> getBkNumList(String bk_local, String bk_genre){
		
		return bk_Mapper.getBkNumList(bk_local, bk_genre);
		
	}
}
