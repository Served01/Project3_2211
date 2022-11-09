package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Dv_Bean;

public interface Dv_Mapper {
	
	//배송지 조회
	@Select("select * from Dv_info where dv_id = #{dv_id}")
	List<Dv_Bean> getDvList(String dv_id);
		
	//배송지 입력
	@Insert("insert into Dv_info(dv_id, dv_name, dv_tel, dv_address)"
	+ "values(#{dv_id}, #{dv_name}, #{dv_tel}, #{dv_address})")
	void addDvInfo(Dv_Bean insertDv_Bean);
	
	//배송지 수정 
	@Select("select * from Dv_info where dv_id = #{dv_id}")
	Dv_Bean updateDv_Bean(String dv_id);
	
	@Update("update Dv_Bean set dv_name = #{dv_name}, dv_tel = #{dv_tel},dv_address = #{dv_address}"
			+"where dv_id = #{dv_id}")
	void updateDvInfo(Dv_Bean updateDv_Bean);
}
