package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Ca_Bean;

public interface Ca_Mapper {
	
	@Select("select bk_number,bk_title,bk_writer,bk_publisher,bk_image,bk_quantity,bk_price,b.ca_bkcount\r\n"
			+ "    from book_info a,(select ca_bknumbers,ca_bkcount\r\n"
			+ "                        from  Cart_info\r\n"
			+ "                        where ca_mbid = #{ca_bmid}) b\r\n"
			+ "    where a.bk_number = b.ca_bknumbers")
		List<Ca_Bean> getCartInfo(String ca_mbid);

	@Insert("insert into cart_info(ca_mbid,ca_bknumbers) values(#{ca_mbid},#{ca_bknumbers})")
		void addCartStuff(@Param("ca_mbid") String ca_mbid,@Param("ca_bknumbers")int ca_bknumbers);
		
	@Delete("delete from Cart_info where ca_mbid = #{ca_mbid} AND ca_bknumbers = #{ca_bknumbers}")
		void delcart(@Param("ca_mbid") String ca_mbid,@Param("ca_bknumbers")int ca_bknumbers);
	@Delete("delete from Cart_info where ca_mbid = #{ca_mbid}")
		void delcartAll(String ca_mbid);
	
	@Update("update cart_info set ca_bkcount = ca_bkcount + 1 where ca_mbid = #{ca_mbid} and ca_bknumbers = #{ca_bknumbers}")
		void plusBookCount(@Param("ca_mbid") String ca_mbid,@Param("ca_bknumbers")int ca_bknumbers);
	
	@Update("update cart_info set ca_bkcount = ca_bkcount - 1 where ca_mbid = #{ca_mbid} and ca_bknumbers = #{ca_bknumbers}")
		void minusBookCount(@Param("ca_mbid") String ca_mbid,@Param("ca_bknumbers")int ca_bknumbers);
	
	@Insert("insert into order_info(or_number,or_mbid) values(#{or_number},#{ca_mbid})")
		void createOderInfo(@Param("or_number")String or_number,@Param("ca_mbid") String ca_mbid);
	
	
	
	@Insert("insert into order_items values(#{or_number},#{ca_bknumbers},\r\n"
			+ "                        (select bk_price from book_info where bk_number = #{ca_bknumbers}),\r\n"
			+ "                        (select ca_bkcount from  Cart_info where ca_mbid = #{ca_mbid} and ca_bknumbers = #{ca_bknumbers}),1)")
		void insertOderItems(@Param("or_number")String or_number,@Param("ca_bknumbers")int ca_bknumbers,@Param("ca_mbid") String ca_mbid);
	
}
