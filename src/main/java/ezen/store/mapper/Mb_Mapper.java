package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Mb_Bean;


public interface Mb_Mapper {

	@Select("select mb_name from mb_info where mb_id = #{mb_id}")
		String checkUserIdExist(String mb_id);
	
	@Insert("insert into mb_info(mb_idx, mb_id, mb_pw, mb_name, mb_email, mb_tel)"
			+ "values(user_seq.nextval, #{mb_id}, #{mb_pw}, #{mb_name}, #{mb_email}, #{mb_tel})")
		void addUserInfo(Mb_Bean insert_mb_Bean);
		
	@Select("select * from mb_info"
			+ "	where mb_id=#{mb_id} and mb_pw = #{mb_pw}")
	Mb_Bean  getloginUserInfo(Mb_Bean temp_mb_Bean);
	
	@Select("select mb_id, mb_name from mb_info where mb_idx = #{mb_idx}")
	Mb_Bean getModifyUserInfo(int mb_idx);
			
	@Update("update mb_info set mb_pw = #{mb_pw}, mb_email = #{mb_email}, mb_tel = #{mb_tel} where mb_idx = #{mb_idx}")
		void modifyUserInfo(Mb_Bean update_mb_Bean);
		
	//
	@Select("select mb_idx, mb_id, mb_name, mb_email, mb_tel from mb_info where mb_idx = #{mb_idx}")
	Mb_Bean getSelectUserInfo(int mb_idx);
	
	// 회원정보 전체조회 하는 SQL문
	@Select("select * from mb_info")
		List<Mb_Bean> getMbList(int mb_idx);

	
//	//전체보기
//		@Select("select * from mb_info where mb_idx = #{mb_idx}")
//		List<Mb_Bean> getMbList(int mb_idx);
		
	}
