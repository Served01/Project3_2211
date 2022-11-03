package kr.co.ezen.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.ezen.beans.Mb_Bean;


public interface Mb_Mapper {

	@Select("select mb_name from mb_info where mb_id = #{mb_id}")
		String checkUserIdExist(String mb_id);
	
	@Insert("insert into mb_info(user_idx, mb_id, mb_pw, mb_name, mb_email, mb_tel)"
			+ "values(user_seq.nextval, #{mb_id}, #{mb_pw}, #{mb_name}, #{mb_email}, #{mb_tel})")
		void addUserInfo(Mb_Bean insert_mb_Bean);
		
	@Select("select * from mb_info"
			+ "	where mb_id=#{mb_id} and mb_pw = #{mb_pw}")
	Mb_Bean  getloginUserInfo(Mb_Bean tempUserDataBean);
	
	@Select("select mb_id, mb_name from mb_info where user_idx = #{user_idx}")
	Mb_Bean getModifyUserInfo(int user_idx);
			
	@Update("update mb_info set mb_pw = #{mb_pw} where user_idx = #{user_idx}")
		void modifyUserInfo(Mb_Bean modifyUserDataBean);
		
	
}
