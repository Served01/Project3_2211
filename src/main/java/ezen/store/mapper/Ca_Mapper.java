package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import ezen.store.beans.Ca_Bean;

public interface Ca_Mapper {
	
	@Select("select bk_number,bk_title,bk_writer,bk_publisher,bk_image,bk_quantity,bk_price\r\n"
			+ "    from Book_info\r\n"
			+ "    where bk_number in (select ca_bknumbers\r\n"
			+ "                        from  Cart_info\r\n"
			+ "                        where ca_mbid = #{ca_mbid})")
		List<Ca_Bean> getCartInfo(String ca_mbid);

	@Insert("insert into cart_info(ca_mbid,ca_bknumbers) values(#{ca_mbid},#{ca_bknumbers})")
		void addCartStuff(@Param("ca_mbid") String ca_mbid,@Param("ca_bknumbers")int ca_bknumbers);
		
	@Delete("delete from Cart_info where ca_mbid = #{ca_mbid} AND ca_bknumbers = #{ca_bknumbers}")
		void delcart(@Param("ca_mbid") String ca_mbid,@Param("ca_bknumbers")int ca_bknumbers);
	@Delete("delete from Cart_info where ca_mbid = #{ca_mbid}")
		void delcartAll(String ca_mbid);
}
