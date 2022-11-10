package ezen.store.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import ezen.store.beans.Bk_Bean;

public interface Bk_Mapper {
	
	//일련번호 중복확인 sql
	@Select("select * from Book_info where bk_number = #{bk_number}")
		String CheckBkNumExist(int Bk_number);
	
	//책 정보 입력 sql
	@Insert("insert into Book_info(bk_number, bk_title, bk_writer, bk_publisher, bk_pubdate, bk_image, bk_local, bk_genre,"
			+ "bk_infodate, bk_detail, bk_quantity, bk_price, bk_title_upper, bk_deleted)"
			+ "values(#{bk_number}, #{bk_title}, #{bk_writer}, #{bk_publisher}, #{bk_pubdate}, #{bk_image, jdbcType=VARCHAR}, #{bk_local}, #{bk_genre},"
			+ "sysdate, #{bk_detail}, #{bk_quantity}, #{bk_price}, upper(#{bk_title}), '0')")

	void addBkInfo(Bk_Bean InsertBkBean);

}
