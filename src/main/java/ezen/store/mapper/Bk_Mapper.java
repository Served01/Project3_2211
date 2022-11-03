package ezen.store.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import ezen.store.beans.Bk_Bean;

public interface Bk_Mapper {
	
	@Select("select bk_title from Book_info where bk_number = #{bk_number}")
	String checkBk_numExist(String bk_number);
	
	@Insert("insert into Book_info(bk_number, bk_title, bk_writer, bk_pubdate, bk_image, bk_local, bK_genre,"
			+ " sysdate, bk_detail, bk_quantity, bk_price, upper(bk_title))"
			+ "valuse(#{bk_number}, #{bk_title}, #{bk_writer}, #{bk_pubdate}, #{bk_image}, #{bk_local}, #{bK_genre},"
			+ " sysdate, #{bk_detail}, #{bk_quantity}, #{bk_price}, #{bk_title_upper}")
	
		void addBk_info(Bk_Bean insert_bk_Bean);
}
