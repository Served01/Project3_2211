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
	
	public void addUserInfo(Mb_Bean insertMbBean) {
		
		mbMapper.addUserInfo(insertMbBean); 
	}
	//로그인
	public Mb_Bean  getloginUserInfo(Mb_Bean tempMbBean) {
		
		return mbMapper.getloginUserInfo(tempMbBean);
	}
	
	// �닔�젙 �븷 �젙蹂�
	public Mb_Bean getModifyUserInfo(String mb_id) {				
		return mbMapper.getModifyUserInfo(mb_id); 		
	}
	
	// 鍮꾨쾲 �닔�젙
	public void modifyUserInfo(Mb_Bean updateMbBean) {
		mbMapper.modifyUserInfo(updateMbBean);
		
	}
	//리스트
	public List<Mb_Bean> getMbList(String mb_id){
		
		return mbMapper.getMbList(mb_id);
	}
		
	//상세보기
	public Mb_Bean getMemberInfo(String mb_id) {
			
	return mbMapper.getMemberInfo(mb_id);
		}
		
	}
