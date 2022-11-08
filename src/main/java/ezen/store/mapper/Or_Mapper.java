package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Ca_Bean;
import ezen.store.beans.CartDataBean;
import ezen.store.beans.Or_Bean;

public interface Or_Mapper {


	@Select("select user_name from user_table where user_id = #{user_id}")
		String checkUserIdExist(String user_id);
	
	@Select("select bk_number,bk_title,bk_writer,bk_publisher,bk_image,bk_quantity,bk_price\r\n"
			+ "    from Book_info\r\n"
			+ "    where bk_number in (select ca_bknumbers\r\n"
			+ "                        from  Cart_info\r\n"
			+ "                        where ca_mbid = #{ca_mbid})")
		List<Or_Bean> getOrderInfo(String or_mbid);
	
	@Insert("insert into Order_info(or_number, or_mbid, or_bknumber, or_bkprice, "
			+ "or_cacount, or_status, or_date, or_delivery, or_address)"
			+ "values(user_seq.nextval, #{or_mbid}, #{or_bknumber}, #{or_bkprice}, "
			+ "#{or_cacount}, #{or_status}, #{or_date}, #{or_delivery}, #{or_address})")
		void Or_insert(Or_Bean addOrderDataBean);
		
	@Select("select * from Order_info"
			+ "	where or_mbid = #{or_mbid}")
		Or_Bean  Or_select(String user_idx);
	
	@Select("select user_id, user_name from user_table where user_idx = #{user_idx}")
		Or_Bean Or_update(int user_idx);
			
	@Update("update user_table set user_pw = #{user_pw} where user_idx = #{user_idx}")
		void modifyUserInfo(CartDataBean modifyUserDataBean);
	
	@Insert("insert into Order_info(or_number, or_mbid, or_bknumber, or_bkprice, "
			+ "or_cacount, or_status, or_date, or_delivery, or_address)"
			+ "values(user_seq.nextval, #{or_mbid}, #{or_bknumber}, #{or_bkprice}, "
			+ "#{or_cacount}, #{or_status}, #{or_date}, #{or_delivery}, #{or_address})")
		void Or_insert(String ca_mbid, int ca_bknumbers);
		
}
