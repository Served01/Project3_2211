package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Rv_Bean;

public interface Rv_Mapper {

	//리뷰 리스트를 가져오는 SQL문
	@Select("select * from Review_data where rv_bknumber = #{rv_bknumber} and rv_deleted = '0'")
	List<Rv_Bean> getRvList(int rv_bknumber);
	
	//리뷰를 입력하는 SQL문
	@Insert("insert into Review_Data(rv_number, rv_bknumber, rv_id, rv_date, rv_score, rv_content)"
			+ "values(review_seq.nextval, #{rv_bknumber}, #{rv_id}, sysdate, #{rv_score}, #{rv_content})")
	void insertReview(Rv_Bean insertRvBean);
	
	//수정을 하기 위한 리뷰 정보를 가져오는 SQL문
	@Select("select * from Review_Data where rv_number = #{rv_number}")
	Rv_Bean updatecheckRvBean(int rv_number);
	
	//리뷰를 수정하는 SQL문
	@Update("update Review_Data set rv_score = #{rv_score}, rv_content = #{rv_content}"
			+ "where rv_number = #{rv_number}")
	void updateReview(Rv_Bean updateRvBean);
	
	//리뷰를 삭제하는 SQL문
	@Update("update Review_Data set rv_deleted = 'deleted' where rv_number = #{rv_number}")
	void deleteReview(int rv_number);
	
}
