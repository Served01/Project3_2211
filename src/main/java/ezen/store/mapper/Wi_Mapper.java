package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import ezen.store.beans.Ca_Bean;
import ezen.store.beans.Wi_Bean;

public interface Wi_Mapper {
	
	@Select("select bk_number,bk_title,bk_writer,bk_publisher,bk_image,bk_quantity,bk_price\r\n"
			+ "    from Book_info\r\n"
			+ "    where bk_number in (select wi_bknumbers\r\n"
			+ "                        from  Wish_info\r\n"
			+ "                        where wi_mbid = #{wi_mbid})")
		List<Wi_Bean> getWishInfo(String wi_mbid);

	@Insert("insert into Wish_info(wi_mbid,wi_bknumbers) values(#{wi_mbid},#{wi_bknumbers})")
		void addWishStuff(@Param("wi_mbid") String wi_mbid,@Param("wi_bknumbers")int wi_bknumbers);
		
	@Delete("delete from Wish_info where wi_bknumbers = #{wi_bknumbers}")
		void delwish(int wi_bknumbers);
	@Delete("delete from Wish_info where wi_mbid = #{wi_mbid}")
		void delwishAll(String wi_mbid);
}
