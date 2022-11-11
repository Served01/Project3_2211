package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Mb_Bean;


public interface Mb_Mapper {

	@Select("select mb_name from mb_info where mb_id = #{mb_id}")
		String checkUserIdExist(String mb_id);
	
	//회원정보 입력
	@Insert("insert into mb_info (mb_id, mb_pw, mb_name, mb_email, mb_tel, mb_deleted) values (#{mb_id}, #{mb_pw}, #{mb_name}, #{mb_email}, #{mb_tel}, '0')")
		void addUserInfo(Mb_Bean insertMbBean);
		
	@Select("select * from mb_info	where mb_id=#{mb_id} and mb_pw = #{mb_pw}")
	Mb_Bean  getloginUserInfo(Mb_Bean tempMbBean);
	
	@Select("select mb_id, mb_name from mb_info where mb_id = #{mb_id}")
	Mb_Bean getModifyUserInfo(String mb_id);
			
	@Update("update mb_info set mb_pw = #{mb_pw}, mb_email = #{mb_email}, mb_tel = #{mb_tel} where mb_id = #{mb_id}")
		void modifyUserInfo(Mb_Bean updateMbBean);
		
	//
	@Select("select mb_id, mb_name, mb_email, mb_tel from mb_info where mb_id = #{mb_id}")
	Mb_Bean getSelectUserInfo(String mb_id);
	
	// 회원정보 전체조회 하는 SQL문
	@Select("select * from mb_info")
		List<Mb_Bean> getMbList(String mb_id);
		
	// 회원정보 상세보기 SQL 구문
	@Select("select mb_id, mb_name, mb_email, mb_tel from mb_info where mb_id = #{mb_id}")
	Mb_Bean getMemberInfo(String mb_id);


}
