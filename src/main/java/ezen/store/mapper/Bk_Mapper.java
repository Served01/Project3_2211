package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.RowBounds;

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
	
	//책 정보를 지역, 그리고 장르로 추출하여 가져와 날짜별로 내림차순 정렬하여 출력합니다.
	@Select("select * from book_info where bk_local = #{bk_local} and bk_genre = #{bk_genre}")
	List<Bk_Bean> getBkList(@Param("bk_local") String bk_local, @Param("bk_genre") String bk_genre);
	
	//해당 책에 있는 리뷰 평점을 추출하여 가져와 평균을 냅니다.
	@Select("select avg(r.rv_score) as rv_score"
			+ "from Bk_info b, Rv_info r"
			+ "where b.Bk_number = r.rv_bknumber"
			+ "and b.bk_number = #{bk_number}")	
		Bk_Bean getBkScore(int bk_number);
	
	//책 정보를 추출하여 가져옵니다.
	@Select("select * from book_info"
			+ "where bk_local = #{bk_local} and bk_genre = #{bk_genre}")
		Bk_Bean getBkInfo(int bk_number);
	
}
