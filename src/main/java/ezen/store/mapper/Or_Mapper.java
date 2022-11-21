package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Or_Bean;

public interface Or_Mapper {
	
		//주문 목록 list 출력
		@Select("select *\r\n"
			+ "    from order_info\r\n"
			+ "    where mb_id in (select mb_id\r\n"
			+ "                        from  Member_info\r\n"
			+ "                        where mb_id = #{mb_id})"
			+ "		order by or_date")
		List<Or_Bean> OrList(String mb_id);
		
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
		@Select("select *\r\n"
				+ "    from order_info\r\n"
				+ "    where mb_id in (select mb_id\r\n"
				+ "			             from  Member_info\r\n"
				+ "	                       where mb_id = #{mb_id})\r\n"
				+ "		and or_number = #{or_number}")
		List<Or_Bean> getOrInfo (@Param("mb_id") String mb_id, @Param("or_number") String or_number);

		@Select("select or_number, bk_title, bk_image, bk_number, bk_price, ori_bkdiscount, ori_bkcount\r\n"
				+ "    from order_items natural join book_info\r\n"
				+ "    where or_number in (select or_number from Order_info where or_number = #{or_number})")
		List<Or_Bean> OrSelect(String or_number);
		
//		@Select("select or.or_number, or.or_mbid, or.or_mbname, or.or_mbtel, or.or_status, or.or_date, or.or_delivery, or.or_deliveryCost, or.or_dvname, or.or_dvtel, or.or_dvaddress,\r\n"
//				+ "	 	ori.ori_bknumber, ori.ori_bkprice, ori.ori_bkdiscount, ori.ori_bkcount"
//				+ "		from order_info or, order_items ori\r\n"
//				+ "		where or.or_mbid = #{or_mbid}"
//				+ "		and or.or_number = #{or_number}"
//				+ "		and or.or_number = ori.ori_number")
//		List<Or_Bean> OrSelect(String or_mbid, String or_number);
		
		//주문 확정
		@Update("update order_info set or_status = '준비중', dv_name = #{dv_name}, dv_tel = #{dv_tel}, dv_address = #{dv_address}, or_date = sysdate\r\n"
				+ "		where mb_id = #{mb_id}\r\n"
				+ "		and or_number = #{or_number}")
		List<Or_Bean> OrUpdatePurchase(@Param("mb_id") String mb_id, @Param("or_number") String or_number);
		
		//주문 상황 수정
//		@Update("update order_info set or_status = #{or_status}\r\n"
//				+ "		where or_mbid = #{or_mbid}\r\n"
//				+ "		and or_number = #{or_number}")
//		List<Or_Bean> OrAfter(@Param("or_mbid") String or_mbid, @Param("or_number") String or_number, @Param("or_status") String or_status);
		@Update("update order_info set or_status = #{or_status}\r\n"
				+ "		where mb_id = #{mb_id}\r\n"
				+ "		and or_number = #{or_number}")
		void OrUpdateAfter(Or_Bean updateOrBean);
		
		@Update("update order_info set mb_name = #{mb_name}, mb_tel = #{mb_tel}, or_status = #{or_status}, or_date = #{or_date}, or_delivery = #{or_delivery}, dv_name = #{dv_name}, dv_tel = #{dv_tel}, dv_address = #{dv_address}" 
				+"		where mb_id = #{mb_id}"
				+"		and or_number = #{or_number}")
		void UpdateOrInfo(Or_Bean UpdateOrBean);
		
		@Select("select or_number, mb_id, mb_name, mb_tel, or_status, or_date, or_delivery, or_deliveryCost, dv_name, dv_tel, dv_address\r\n"
				+ "    from order_info\r\n"
				+ "    where mb_id in (select mb_id\r\n"
				+ "			             from  Member_info\r\n"
				+ "	                       where mb_id = #{mb_id})\r\n"
				+ "		and or_number = #{or_number}")
		Or_Bean UpdateOrBean (@Param("mb_id") String mb_id, @Param("or_number") String or_number);
		
		//주문 상황 수정(책 재고)
//		@Select("select or_number, bk_title, bk_image, bk_number, bk_price, ori_bkdiscount, ori_bkcount\r\n"
//				+ "    from order_items natural join book_info\r\n"
//				+ "    where or_number in (select or_number from Order_info where or_number = #{or_number})")
//		List<Or_Bean> UpdateOriBean(String or_number);
		
		@Select("select ori.or_number, bk.bk_title, bk.bk_image, ori.bk_number, ori.bk_price, ori.ori_bkdiscount, ori.ori_bkcount\r\n"
				+ "    from order_items ori, book_info bk\r\n"
				+ "    where or_number in (select or_number from Order_info where or_number = #{or_number})"
				+ "		and ori.bk_number = bk.bk_number")
		List<Or_Bean> UpdateOriBean(String or_number);
		
//		@Update("update bk_info set bk_title=#{bk_title}, bk_writer=#{bk_writer}, bk_publisher=#{bk_publisher}, bk_pubdate=#{bk_pubdate},\r\n"
//				+ "		bk_image=#{bk_image, jdbcType=VARCHAR}, bk_local=#{bk_local}, bk_genre=#{bk_genre}, bk_infodate=sysdate, bk_detail=#{bk_detail},\r\n"
//				+ "		bk_quantity=bk_quantity+#{ori_bkcount}, bk_price=#{bk_price}, bk_title_upper=upper(#{bk_title}), bk_deleted=#{bk_deleted}"
//				+ "		where bk_number = #{ori_bknumber}")
		@Update("update bk_info set bk_number = #{bk_number}, bk_quantity = bk_quantity + #{ori_bkcount}\r\n"
				+ "		and bk_number = #{bk_number}")
		void OriUpdateAfter(List<Or_Bean> updateOriBean);
		
		
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
