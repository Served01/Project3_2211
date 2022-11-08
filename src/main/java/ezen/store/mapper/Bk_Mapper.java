package ezen.store.mapper;

import org.apache.ibatis.annotations.Insert;

import ezen.store.beans.Bk_Bean;

public interface Bk_Mapper {

	@Insert("insert into Book_info(bk_number, bk_title, bk_writer, bk_publisher, bk_pubdate, bk_image, bk_local, bK_genre,"
			+ "bk_infodate, bk_detail, bk_quantity, bk_price)"
			+ "values(#{bk_number}, #{bk_title}, #{bk_writer}, #{bk_publisher}, #{bk_pubdate}, #{bk_image, jdbcType=VARCHAR}, #{bk_local}, #{bK_genre},"
			+ "sysdate, #{bk_detail}, #{bk_quantity}, #{bk_price})")

	void addBk_info(Bk_Bean insert_bk_Bean);

}
