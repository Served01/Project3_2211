package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Dv_Bean;

public interface Dv_Mapper {
	
	//회원 Id를 추출하여 배송지 리스트에 출력
	@Select("select * from delivery_info where dv_id = #{dv_id}")
	List<Dv_Bean> getDvList(String dv_id);
	
	//배송지 입력
	@Insert("insert into Delivery_info(dv_id, dv_name, dv_tel, dv_address)"
	+ "values(#{dv_id}, #{dv_name}, #{dv_tel}, #{dv_address})")
	void addDvInfo(Dv_Bean InsertDvBean);
	
	//배송지 수정 
	@Select("select * from Delivery_info where dv_id = #{dv_id}")
	
	Dv_Bean UpdateDvBean(String dv_id);
	
	@Update("update Delivery_info set dv_name = #{dv_name}, dv_tel = #{dv_tel},dv_address = #{dv_address}"
			+"where dv_id = #{dv_id}")
	void UpdateDvInfo(Dv_Bean UpdateDvBean);
	
	//배송지 삭제
	@Delete("delete Delivery_info where dv_id = #{dv_id}")
	void DeleteDvInfo(String dv_id);
}
