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
	
	//아아디 중복체크
	public String checkUserIdExist(String mb_id){
				
		return mbMapper.checkUserIdExist(mb_id);		
	}
	
	//패스워드 체크
	public String checkUserIdExist2(String mb_id){
		
		return mbMapper.checkUserIdExist2(mb_id);		
	}
	
	//회원가입
	public void addUserInfo(Mb_Bean insertMbBean) {
		
		mbMapper.addUserInfo(insertMbBean); 
	}
	//로그인
	public Mb_Bean  getloginUserInfo(Mb_Bean tempMbBean) {
		
		return mbMapper.getloginUserInfo(tempMbBean);
	}
	
	//수정할 회원정보 
	public Mb_Bean getModifyUserInfo(String mb_id) {				
		return mbMapper.getModifyUserInfo(mb_id); 		
	}
	
	//회원정보 수정
	public void modifyUserInfo(Mb_Bean updateMbBean) {
		mbMapper.modifyUserInfo(updateMbBean);
		
	}
	
	//삭제할 회원정보(임시삭제) 
	public Mb_Bean getDeleteUserInfo(String mb_id) {				
		return mbMapper.getDeleteUserInfo(mb_id); 		
	}
	
	//회원정보 삭제(임시삭제)
	public void deleteUserInfo(Mb_Bean deleteMbBean) {
		mbMapper.deleteUserInfo(deleteMbBean);
		
	}
	//회원 리스트
	public List<Mb_Bean> getMbList(String mb_id){
		
		return mbMapper.getMbList(mb_id);
	}
		
	//회원정보 상세보기
	public Mb_Bean getMemberInfo(String mb_id) {
			
	return mbMapper.getMemberInfo(mb_id);
	}
	
		
}
