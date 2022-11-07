package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import ezen.store.beans.Rv_Bean;

public interface Rv_Mapper {

	//리뷰 리스트를 가져오는 SQL문
	@Select("select * from Review_data where rv_bknumber = #{rv_bknumber}")
	List<Rv_Bean> getRvList(int rv_bknumber);
	
}
