package ezen.store.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.CartDataBean;

public interface Ca_Mapper {


	@Select("select user_name from user_table where user_id = #{user_id}")
		String checkUserIdExist(String user_id);
	
	@Insert("insert into Cart_info(ca_number, ca_mbid, ca_bknumber, ca_bkcount)"
			+ "values(user_seq.nextval, #{user_name}, #{user_id}, #{user_pw})")
		void addUserInfo(CartDataBean joinUserDataBean);
		
	@Select("select * from Cart_info"
			+ "	where ca_number=#{ca_number} and ca_mbid = #{ca_mbid}")
	CartDataBean  getCa_select(CartDataBean tempUserDataBean);
	
	@Select("select user_id, user_name from user_table where user_idx = #{user_idx}")
		CartDataBean getCa_update(int user_idx);
			
	@Update("update user_table set user_pw = #{user_pw} where user_idx = #{user_idx}")
		void modifyUserInfo(CartDataBean modifyUserDataBean);
		
	@Delete("delete from Cart_info "
			+ "where ca_number=#{ca_number} "
			+ "and ca_mbid=#{ca_mbid} and ca_bknumber=#{ca_bknumber}")
		CartDataBean get_Delete();


}
