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

	// 아이디 중복 체크
	public boolean checkUserIdExist(String mb_id) {

		String mb_name = mbDAO.checkUserIdExist(mb_id);

		if (mb_name == null) {
			return true;
		} else {
			return false;
		}
	}

	// 회원 가입
	public void addUserInfo(Mb_Bean insertMbBean) {

		mbDAO.addUserInfo(insertMbBean);
	}

	// 로그인 정보 확인
	public void getloginUserInfo(Mb_Bean tempMbBean) {
		//
		Mb_Bean tempMbBean2 = mbDAO.getloginUserInfo(tempMbBean);

		if (tempMbBean2 != null) {
			loginMbBean.setMb_id(tempMbBean2.getMb_id());
			loginMbBean.setMb_pw(tempMbBean2.getMb_pw());
			loginMbBean.setMblogin(true);
		}
	}

//		//회원정보(수정) 가져오기(단위 테스트용)
//		public Mb_Bean getModifyUserInfo(String mb_id) {	
//			
//			return mbDAO.getModifyUserInfo(mb_id);
//		}

	// 회원정보 수정 정보 가져오기
	public Mb_Bean getModifyUserInfo(Mb_Bean updateMbBean) {
		Mb_Bean tempModifyUserDataBean = mbDAO.getMbInfo(updateMbBean.getMb_id());

		updateMbBean.setMb_id(tempModifyUserDataBean.getMb_id());
//		updateMbBean.setMb_name(tempModifyUserDataBean.getMb_name());
//		updateMbBean.setMb_pw(tempModifyUserDataBean.getMb_pw());
//		updateMbBean.setMb_email(tempModifyUserDataBean.getMb_email());
//		updateMbBean.setMb_tel(tempModifyUserDataBean.getMb_tel());

		return tempModifyUserDataBean;
	}

	// 회원정보 수정 실행
	public void modifyUserInfo(Mb_Bean updateMbBean) {

		// 로그인정보 담아서 하는거라 단위 테스트시 비활성화 해야함!
//				updateMbBean.setMb_id(loginMbBean.getMb_id());

		mbDAO.modifyUserInfo(updateMbBean);
	}

	// 회원정보 삭제할정보 가져오기
	public Mb_Bean getMbInfo(Mb_Bean deleteMbBean) {

		Mb_Bean tempDeleteUserDataBean = mbDAO.getMbInfo(deleteMbBean.getMb_id());

		deleteMbBean.setMb_id(tempDeleteUserDataBean.getMb_id());
		deleteMbBean.setMb_pw(tempDeleteUserDataBean.getMb_pw());

		return tempDeleteUserDataBean;
	}

	// 삭제할 정보 확인
	public void deleteUserInfo(Mb_Bean deleteMbBean) {
		//
		mbDAO.deleteUserInfo(deleteMbBean);

	}

	// 전체회원 목록 리스트 가져오기
	public List<Mb_Bean> getMbList(String mb_id) {

		return mbDAO.getMbList(mb_id);
	}

	// 회원 상세보기 가져오기
	public Mb_Bean getMbInfo(String mb_id) {

		return mbDAO.getMbInfo(mb_id);
	}

}
