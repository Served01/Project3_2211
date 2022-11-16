package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Or_Bean;

public interface Or_Mapper {
	
		//주문 목록 출력
		@Select("select or_number, or_mbid, or_mbname, or_mbtel, or_status, or_date, or_delivery, or_deliveryCost, or_dvname, or_dvtel, or_dvaddress\r\n"
			+ "    from order_info\r\n"
			+ "    where or_mbid in (select mb_id\r\n"
			+ "                        from  Member_info\r\n"
			+ "                        where mb_id = #{or_mbid})")
		List<Or_Bean> OrList(String or_mbid);
		
//	@Insert("insert into Order_info(or_number, or_mbid, or_bknumber, or_bkprice, "
//			+ "or_cacount, or_status, or_date, or_delivery, or_address)"
//			+ "values(user_seq.nextval, #{or_mbid}, #{or_bknumber}, #{or_bkprice}, "
//			+ "#{or_cacount}, #{or_status}, #{or_date}, #{or_delivery}, #{or_address})")
//		void Or_insert(String ca_mbid, int ca_bknumbers);
	/*
	@Insert("insert into Order_info(or_number, or_mbid, or_bknumber, or_bkprice, "
			+ "or_cacount, or_status, or_date, or_delivery, or_address)"
			+ "values(user_seq.nextval, #{or_mbid}, #{or_bknumber}, #{or_bkprice}, "
			+ "#{or_cacount}, #{or_status}, #{or_date}, #{or_delivery}, #{or_address})")
		void Or_insert(Or_Bean addOrderDataBean);
		*/
//	@Select("select * from Order_info\r\n"
//			+ "where or_number = #{or_number}")
		
		//주문 상세 정보 출력
		@Select("select or_number, or_mbid, or_mbname, or_mbtel, or_status, or_date, or_delivery, or_deliveryCost, or_dvname, or_dvtel, or_dvaddress\r\n"
				+ "    from order_info\r\n"
				+ "    where or_mbid in (select mb_id\r\n"
				+ "			             from  Member_info\r\n"
				+ "	                       where mb_id = #{or_mbid})\r\n"
				+ "		and or_number = #{or_number}")
		List<Or_Bean> getOrInfo (@Param("or_mbid") String or_mbid, @Param("or_number") String or_number);

		@Select("select ori.ori_number, bk.bk_title, bk.bk_image, ori.ori_bknumber, ori.ori_bkprice, ori.ori_bkdiscount, ori.ori_bkcount\r\n"
				+ "    from order_items ori, book_info bk\r\n"
				+ "    where ori_number in (select or_number from Order_info where or_number = #{or_number})"
				+ "		and ori.ori_bknumber = bk.bk_number")
		List<Or_Bean> OrSelect(String or_number);
		
//		@Select("select or.or_number, or.or_mbid, or.or_mbname, or.or_mbtel, or.or_status, or.or_date, or.or_delivery, or.or_deliveryCost, or.or_dvname, or.or_dvtel, or.or_dvaddress,\r\n"
//				+ "	 	ori.ori_bknumber, ori.ori_bkprice, ori.ori_bkdiscount, ori.ori_bkcount"
//				+ "		from order_info or, order_items ori\r\n"
//				+ "		where or.or_mbid = #{or_mbid}"
//				+ "		and or.or_number = #{or_number}"
//				+ "		and or.or_number = ori.ori_number")
//		List<Or_Bean> OrSelect(String or_mbid, String or_number);
		
		//주문 확정
		@Update("update order_info set or_status = '준비중', or_dvname = #{or_dvname}, or_dvtel = #{or_dvtel}, or_dvaddress = #{or_dvaddress}, or_date = sysdate\r\n"
				+ "		where or_mbid = #{or_mbid}\r\n"
				+ "		and or_number = #{or_number}")
		List<Or_Bean> OrUpdate(@Param("or_mbid") String or_mbid, @Param("or_number") String or_number);
		
		//
		@Update("update order_info set or_status = #{or_status}\r\n"
				+ "		where or_mbid = #{or_mbid}\r\n"
				+ "		and or_number = #{or_number}")
		List<Or_Bean> OrAfter(@Param("or_mbid") String or_mbid, @Param("or_number") String or_number, @Param("or_status") String or_status);
	
		
		/*
	@Select("select user_id, user_name from user_table where user_idx = #{user_idx}")
		Or_Bean Or_update(int user_idx);
			
	@Update("update user_table set user_pw = #{user_pw} where user_idx = #{user_idx}")
		void modifyUserInfo(Ca_Bean modifyUserDataBean);
	
	
		*/
		
	
	/*
	@Select("select count(*) from order_info where or_mbid = #{or_mbid}")
	int getContentCnt(String or_mbid);
	*/
}
