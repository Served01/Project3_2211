package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Mb_Bean;

public interface Mb_Mapper {

	// 아이디 중복 체크
	@Select("select mb_name from Member_info where mb_id = #{mb_id}")
	String checkUserIdExist(String mb_id);
	
	// 패스워드 체크
	@Select("select mb_pw from Member_info where mb_id = #{mb_id}")
	String checkUserIdExist2(String mb_id);

	// 회원정보 입력 실행
	@Insert("insert into Member_info (mb_id, mb_pw, mb_name, mb_email, mb_tel, mb_deleted) values (#{mb_id}, #{mb_pw}, #{mb_name}, #{mb_email}, #{mb_tel}, '0')")
	void addUserInfo(Mb_Bean insertMbBean);

	// 로그인시 패스워드 일치 확인
	@Select("select * from Member_info	where mb_id=#{mb_id} and mb_pw = #{mb_pw}")
	Mb_Bean getloginUserInfo(Mb_Bean tempMbBean);

	// 회원정보 수정할 회원정보 받아오기 SQL 구문
	@Select("select mb_id, mb_name ,mb_email, mb_tel from Member_info where mb_id = #{mb_id}")
	Mb_Bean getModifyUserInfo(String mb_id);

	// 회원정보 수정 실행 SQL 구문
	@Update("update Member_info set mb_name = #{mb_name}, mb_pw = #{mb_pw}, mb_email = #{mb_email}, mb_tel = #{mb_tel} where mb_id = #{mb_id}")
	void modifyUserInfo(Mb_Bean updateMbBean);

	// 회원정보 삭제시 삭제할 회원정보 받아오기(임시삭제)
	@Select("select mb_id from Member_info where mb_id = #{mb_id}")
	Mb_Bean getDeleteUserInfo(String mb_id);

	// 회원정보 삭제 실행(임시삭제)
	@Update("update Member_info set mb_deleted = 'deleted', mb_deleted_date = sysdate where mb_id = #{mb_id}")
	void deleteUserInfo(Mb_Bean deleteMbBean);
	
//	// 회원정보 상세보기 SQL 구문
//	@Select("select mb_id, mb_name, mb_email, mb_tel from member_info where mb_id = #{mb_id}")
//	Mb_Bean getSelectUserInfo(String mb_id);

	// 회원목록 전체조회 SQL 구문
	@Select("select * from Member_info")
	List<Mb_Bean> getMbList(String mb_id);

	// 회원정보 상세보기 SQL 구문
	@Select("select mb_id, mb_name, mb_email, mb_tel from Member_info where mb_id = #{mb_id}")
	Mb_Bean getMemberInfo(String mb_id);
	
}