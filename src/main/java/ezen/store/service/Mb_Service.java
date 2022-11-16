package ezen.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.store.beans.Mb_Bean;
import ezen.store.dao.Mb_DAO;

@Service
public class Mb_Service {
	
	@Autowired
	private Mb_DAO mbDAO;
	@Autowired
	private Mb_Bean loginMbBean;
	
	//아이디 중복 체크??
	public boolean checkUserIdExist(String mb_id) {
		
		String mb_name = mbDAO.checkUserIdExist(mb_id);
		
		if(mb_name == null) {
			return true;
		}else {
			return false;		
		}			
	}
	
	public void addUserInfo(Mb_Bean insertMbBean) {
		
		mbDAO.addUserInfo(insertMbBean); 
	}
	//로그인 정보 확인??
	public void  getloginUserInfo(Mb_Bean tempMbBean) {
		//              
		Mb_Bean tempMbBean2 = mbDAO.getloginUserInfo(tempMbBean);
		
		if(tempMbBean != null) {
			loginMbBean.setMb_id(tempMbBean2.getMb_id());
			loginMbBean.setMb_pw(tempMbBean2.getMb_pw());
			loginMbBean.setMb_name(tempMbBean2.getMb_name()); 
			loginMbBean.setMblogin(true);
		}		
	}
	
	//회원정보(수정) 가져오기(단위 테스트용)
	public Mb_Bean getModifyUserInfo(String mb_id) {	
		
		return mbDAO.getModifyUserInfo(mb_id); 		
	}
	
	//회원정보 수정 정보 가져오기(원본)
//	public Mb_Bean getModifyUserInfo(Mb_Bean updateMbBean) {	
//		Mb_Bean tempModifyUserDataBean = mbDAO.getModifyUserInfo(loginMbBean.getMb_id());
//		
//		updateMbBean.setMb_id(tempModifyUserDataBean.getMb_id());
//		updateMbBean.setMb_name(tempModifyUserDataBean.getMb_name()); 		
//		
//		return tempModifyUserDataBean; 		
//	}
	
	// 회원정보 수정 실행
	public void modifyUserInfo(Mb_Bean updateMbBean) {
//		updateMbBean.setMb_id(loginMbBean.getMb_id()); 
		
		mbDAO.modifyUserInfo(updateMbBean);
	}
	
	//회원정보 삭제정보 가져오기(임시삭제)
	public Mb_Bean getDeleteUserInfo(String mb_id) {	
	
		return mbDAO.getDeleteUserInfo(mb_id); 		
	}
	
	// 회원정보 삭제(임시삭제)
	public void deleteUserInfo(Mb_Bean deleteMbBean) {
//		deleteMbBean.setMb_id(loginMbBean.getMb_id()); 
		
		mbDAO.deleteUserInfo(deleteMbBean);
	}
	
	//전체회원 목록 리스트 가져오기
		public List<Mb_Bean> getMbList(String mb_id){
		
		return mbDAO.getMbList(mb_id);
	}
		
	//회원 상세보기 가져오기
	public Mb_Bean getMemberInfo(String mb_id) {
			  
		 return mbDAO.getMemberInfo(mb_id); 
	}
		
	
}

