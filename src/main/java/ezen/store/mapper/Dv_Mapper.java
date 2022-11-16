package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.RequestParam;

import ezen.store.beans.Dv_Bean;

public interface Dv_Mapper {
	
	//배송지 조회
	@Select("select * from Delivery_info where dv_id = #{dv_id}")
	List<Dv_Bean> getDvList(String dv_id);
		
	//배송지 입력
	@Insert("insert into Delivery_info(dv_id, dv_nick, dv_name, dv_tel, dv_address, dv_pk)"
	+ "values(#{dv_id}, #{dv_nick}, #{dv_name}, #{dv_tel}, #{dv_address}, concat(concat(#{dv_id},'.'),#{dv_nick}))")
	void addDvInfo(Dv_Bean InsertDvBean);
	
	//배송지 수정 
	@Select("select * from Delivery_info where dv_pk = concat(concat(#{dv_id},'.'),#{dv_nick})")
	Dv_Bean UpdateDvBean(@Param("dv_id") String dv_id, @Param("dv_nick") String dv_nick);
	
	@Update("update Delivery_info set dv_nick = #{dv_nick}, dv_name = #{dv_name}, dv_tel = #{dv_tel}, dv_address = #{dv_address}, dv_pk = concat(concat(#{dv_id},'.'),#{dv_nick})" 
			+"where dv_pk = #{dv_pk}")
	void UpdateDvInfo(Dv_Bean UpdateDvBean);
	
	//배송지 삭제
	@Delete("delete Delivery_info where dv_pk = concat(concat(#{dv_id},'.'),#{dv_nick})")
	void DeleteDvInfo(@Param("dv_id") String dv_id, @Param("dv_nick") String dv_nick);
}
