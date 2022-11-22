package ezen.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import ezen.store.beans.Dv_Bean;
import ezen.store.beans.Mb_Bean;

public interface Mb_Mapper {

	// 濡쒓렇�씤�떆 �뙣�뒪�썙�뱶 �씪移� �솗�씤
	@Select("select * from Member_info where mb_id = #{mb_id} and mb_pw = #{mb_pw}")
	Mb_Bean getloginUserInfo(Mb_Bean tempMbBean);
	
	// �뙣�뒪�썙�뱶 �씪移� �솗�씤
	@Select("select * from Member_info where mb_id = #{mb_id} and mb_pw = #{mb_pw}")
	String checkUserIdExist2(String mb_id);
	
	// �븘�씠�뵒 以묐났 泥댄겕
	@Select("select mb_name from Member_info where mb_id = #{mb_id}")
	String checkUserIdExist(String mb_id);
	
	// �쉶�썝�젙蹂� �엯�젰 �떎�뻾
	@Insert("insert into Member_info (mb_id, mb_pw, mb_name, mb_email, mb_tel, mb_deleted) values (#{mb_id}, #{mb_pw}, #{mb_name}, #{mb_email}, #{mb_tel}, '0')")
	void addUserInfo(Mb_Bean insertMbBean);
	
	// �쉶�썝紐⑸줉 �쟾泥댁“�쉶 SQL 援щЦ
	@Select("select * from Member_info")
	List<Mb_Bean> getMbList(String mb_id);

	// �쉶�썝�젙蹂� �긽�꽭蹂닿린 SQL 援щЦ
	@Select("select mb_id, mb_pw, mb_name, mb_email, mb_tel from Member_info where mb_id = #{mb_id}")
	Mb_Bean getMbInfo(String mb_id);

	// �쉶�썝�젙蹂� �닔�젙 �떎�뻾 SQL 援щЦ
	@Update("update Member_info set mb_name = #{mb_name}, mb_pw = #{mb_pw}, mb_email = #{mb_email}, mb_tel = #{mb_tel} where mb_id = #{mb_id}")
	void modifyUserInfo(Mb_Bean updateMbBean);

	// �쉶�썝�젙蹂� �긽�꽭蹂닿린 SQL 援щЦ
	@Select("select * from Member_info where mb_id = #{mb_id} and mb_pw={mb_pw}")
	Mb_Bean deleteMbBean(@Param("mb_id") String mb_id);
	
	// �쉶�썝�젙蹂� �긽�꽭蹂닿린 SQL 援щЦ
	@Select("select mb_id from Member_info where mb_id = #{mb_id}")
	Mb_Bean getModifyUserInfo(String mb_id);
	
	// �쉶�썝�젙蹂� �긽�꽭蹂닿린 SQL 援щЦ
	@Select("select * from Member_info where mb_id = #{mb_id} and mb_pw={mb_pw}")
	Mb_Bean getDeleteMbBean(@Param("mb_id") String mb_id);
	
	// �쉶�썝�젙蹂� �궘�젣 �떎�뻾
	@Update("update Member_info set mb_deleted = 'deleted', mb_deleted_date = sysdate where mb_id = #{mb_id} and mb_pw = #{mb_pw}")
	void deleteUserInfo(Mb_Bean deleteMbBean);

}