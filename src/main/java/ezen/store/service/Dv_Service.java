package ezen.store.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ezen.store.beans.Dv_Bean;
import ezen.store.dao.Dv_DAO;

@Service
public class Dv_Service {
	
	@Autowired
	private Dv_DAO dv_DAO;
	
	//insert
	public void addDvInfo(Dv_Bean insertDv_Bean) {
		dv_DAO.addDvInfo(insertDv_Bean);
	}			
	//update
	public void updateDvInfo(Dv_Bean updateDv_Bean) {
		
	}
}
