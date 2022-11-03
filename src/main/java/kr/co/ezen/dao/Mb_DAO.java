package kr.co.ezen.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ezen.beans.Mb_Bean;
import kr.co.ezen.mapper.Mb_Mapper;

@Repository
public class Mb_DAO {

	@Autowired
	private Mb_Mapper mbMapper;
	
	public String checkUserIdExist(String mb_id){
				
		return mbMapper.checkUserIdExist(mb_id);		
	}
	
	public void addUserInfo(Mb_Bean joinUserDataBean) {
		
		mbMapper.addUserInfo(joinUserDataBean); 
	}
	//로그인 정보
	public Mb_Bean  getloginUserInfo(Mb_Bean tempUserDataBean) {
		
		return mbMapper.getloginUserInfo(tempUserDataBean);
	}
	
	// 수정 할 정보
	public Mb_Bean getModifyUserInfo(int user_idx) {				
		return mbMapper.getModifyUserInfo(user_idx); 		
	}
	
	// 비번 수정
	public void modifyUserInfo(Mb_Bean modifyUserDataBean) {
		mbMapper.modifyUserInfo(modifyUserDataBean);
		
	}
	
	
	
	
	
	
	
}
