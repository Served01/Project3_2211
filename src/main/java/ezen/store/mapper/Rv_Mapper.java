package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import ezen.store.beans.Rv_Bean;

public interface Rv_Mapper {

	//리뷰 리스트를 가져오는 SQL문
	@Select("select * from Review_data where rv_bknumber = #{rv_bknumber}")
	List<Rv_Bean> getRvList(int rv_bknumber);
	
	@Insert("insert into Review_Data(rv_number, rv_bknumber, rv_id, rv_date, rv_score, rv_content)"
			+ "values(review_seq.nextval, #{rv_bknumber}, #{rv_id, jdbcType=VARCHAR}, sysdate, #{rv_score}, #{rv_content,jdbcType=VARCHAR})")
	void insertReview(Rv_Bean insertRvBean);
	
	
	
}
