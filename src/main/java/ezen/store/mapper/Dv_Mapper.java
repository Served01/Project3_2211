package ezen.store.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Dv_Bean;

public interface Dv_Mapper {
	
	@Insert("insert into Dv_info(dv_id, dv_name, dv_tel, dv_address)"
	+ "values(#{dv_id}, #{dv_name}, #{dv_tel}, #{dv_address})")
	void addDvInfo(Dv_Bean insertDv_Bean);
	
	@Update("update Dv_info set dv_name=#{dv_name}, dv_tel=#{dv_tel}, dv_address=#{dv_address},"
			+ "where dv_id=#{dv_id}")
	void updateDvInfo(Dv_Bean updateDv_Bean);
}
