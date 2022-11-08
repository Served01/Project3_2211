package ezen.store.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.store.beans.Mb_Bean;
import ezen.store.mapper.Mb_Mapper;

@Repository
public class Mb_DAO {

	@Autowired
	private Mb_Mapper mbMapper;
	
	public String checkUserIdExist(String mb_id){
				
		return mbMapper.checkUserIdExist(mb_id);		
	}
	
	public void addUserInfo(Mb_Bean insert_mb_Bean) {
		
		mbMapper.addUserInfo(insert_mb_Bean); 
	}
	//濡쒓렇�씤 �젙蹂�
	public Mb_Bean  getloginUserInfo(Mb_Bean temp_mb_Bean) {
		
		return mbMapper.getloginUserInfo(temp_mb_Bean);
	}
	
	// �닔�젙 �븷 �젙蹂�
	public Mb_Bean getModifyUserInfo(int mb_idx) {				
		return mbMapper.getModifyUserInfo(mb_idx); 		
	}
	
	// 鍮꾨쾲 �닔�젙
	public void modifyUserInfo(Mb_Bean update_mb_Bean) {
		mbMapper.modifyUserInfo(update_mb_Bean);
		
	}
	//리스트
	public List<Mb_Bean> getMbList(int mb_idx){
		
		return mbMapper.getMbList(mb_idx);
		
	}

//	//
//	public Mb_Bean getListUserInfo(int mb_idx) {				
//		return mbMapper.getListUserInfo(mb_idx); 		
//	}
	//전체보기
		
//	public List<Mb_Bean> getMbList(int mb_idx){
//			
//	  return mbMapper.getMbList(mb_idx);
//			
//		}
//	
//  public Mb_Bean getSelectUserInfo(int mb_idx) {
//		  
//		  return mbMapper.getSelectUserInfo(mb_idx); 
//	  }
//	
	
	
}
