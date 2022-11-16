package ezen.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.store.beans.Dv_Bean;
import ezen.store.dao.Dv_DAO;

@Service
public class Dv_Service {
	
	@Autowired
	private Dv_DAO dv_DAO;
	
	//select
	public List<Dv_Bean> getDvList(String dv_id){
		
		return dv_DAO.getDvList(dv_id);		
	}
	
	//insert
	public void addDvInfo(Dv_Bean InsertDvBean) {
		dv_DAO.addDvInfo(InsertDvBean);
	}			
	
	//update
	public Dv_Bean UpdateDvBean(String dv_id, String dv_nick) {
		return dv_DAO.UpdateDvBean(dv_id, dv_nick);
	}
	
	public void UpdateDvInfo(Dv_Bean UpdateDvBean) {
		dv_DAO.UpdateDvInfo(UpdateDvBean);
	}
	
	//delete
	public void DeleteDvInfo(String dv_id, String dv_nick) {
		dv_DAO.DeleteDvInfo(dv_id, dv_nick);
	}
	
}
