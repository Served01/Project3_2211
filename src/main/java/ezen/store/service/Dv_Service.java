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
	public void addDvInfo(Dv_Bean insertDv_Bean) {
		dv_DAO.addDvInfo(insertDv_Bean);
	}			
	
	//update
	public Dv_Bean updateDv_Bean(String dv_id) {
		return dv_DAO.updateDv_Bean(dv_id);
	}
	
	public void updateDvInfo(Dv_Bean updateDv_Bean) {
		dv_DAO.updateDvInfo(updateDv_Bean);
	}
	
}
