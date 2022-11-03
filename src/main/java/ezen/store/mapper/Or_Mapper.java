package ezen.store.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.CartDataBean;
import ezen.store.beans.OrderDataBean;

public interface Or_Mapper {


	@Select("select user_name from user_table where user_id = #{user_id}")
		String checkUserIdExist(String user_id);
	
	@Insert("insert into Order_info(or_number, or_mbid, or_bknumber, or_bkprice, "
			+ "or_cacount, or_status, or_date, or_delivery, or_address)"
			+ "values(user_seq.nextval, #{user_name}, #{user_id}, #{user_pw})")
		void addOrderInfo(OrderDataBean joinOrderDataBean);
		
	@Select("select * from Order_info"
			+ "	where or_number=#{or_number} and or_mbid = #{or_mbid}")
		OrderDataBean  getOr_select(OrderDataBean tempOrderDataBean);
	
	@Select("select user_id, user_name from user_table where user_idx = #{user_idx}")
		OrderDataBean getOr_update(int user_idx);
			
	@Update("update user_table set user_pw = #{user_pw} where user_idx = #{user_idx}")
		void modifyUserInfo(CartDataBean modifyUserDataBean);
		
}
