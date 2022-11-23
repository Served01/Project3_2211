package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Bk_Bean;
import ezen.store.beans.Bk_Number;

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
		
		//해당 책에 있는 리뷰 평점을 추출하여 가져와 평균을 냅니다.
		@Select("select nvl(avg(rv_score), 0) as avg_score from Review_info where bk_number = #{bk_number}")
		double getBkScore(int bk_number);
		
		//책 리스트 개수를 가져오는 SQL문
		@Select("select count(*) from Book_info where bk_local = #{bk_local} and bk_genre = #{bk_genre} and bk_deleted = '0'")
		int getCntBook(@Param("bk_local") String bk_local, @Param("bk_genre") String bk_genre);
		
		//책 정보를 추출하여 가져옵니다.
		@Select("select bk_number, bk_title, bk_writer, bk_publisher, to_char(bk_pubdate, 'YYYY-MM-DD') as bk_pubdate, bk_image, bk_local, bk_genre, bk_infodate,"
				+ " bk_detail, bk_quantity, bk_price, bk_title_upper, bk_deleted from Book_info where bk_number = #{bk_number}")
		Bk_Bean getBkInfo(int bk_number);
		
		//책 정보를 수정합니다.
		@Update("update Book_info set bk_title=#{bk_title}, bk_writer=#{bk_writer}, bk_publisher=#{bk_publisher}, bk_pubdate=#{bk_pubdate},"
				+ "bk_image=#{bk_image, jdbcType=VARCHAR}, bk_local=#{bk_local}, bk_genre=#{bk_genre}, bk_infodate=sysdate, bk_detail=#{bk_detail},"
				+ "bk_quantity=#{bk_quantity}, bk_price=#{bk_price}, bk_title_upper=upper(#{bk_title}), bk_deleted='0'"
				+ "where bk_number=#{bk_number}")
		void updateBkBean(Bk_Bean updateBkBean);
		
		//책 지역과 장르에 맞는 책들의 책번호 리스트
		@Select("select bk_number from Book_info where bk_local = #{bk_local} and bk_genre = #{bk_genre}")
		List<Bk_Number> getBkNumList(@Param("bk_local") String bk_local, @Param("bk_genre") String bk_genre);
	
		//책 정보를 수정합니다.
		@Update("update Book_info set bk_deleted='deleted'"
				+ "where bk_number=#{bk_number}")
		void deleteBkBean(int bk_number);
		
		@Select("select * form Book_info where bk_title like '%'||#{keyword}||'%'")
		List<Bk_Bean> selectOne(String keyword);
}
