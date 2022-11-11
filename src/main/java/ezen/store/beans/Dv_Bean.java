package ezen.store.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Dv_Bean {
	
	private String dv_id;
	
	@Size(min=2, max=10)
	@Pattern(regexp = "[a-zA-Z가-힣]*")
	private String dv_name;
	
	@Size(min=2, max=50)
	@Pattern(regexp = "[0-9]*")
	private String dv_tel;
	
	@Size(min=2, max=3000)
	@Pattern(regexp = "[a-zA-Z가-힣]*")
	private String dv_address;
	
	@SuppressWarnings("unused")
	private boolean dvinsert;
		
	public String getDv_id() {
		return dv_id;
	}
	public void setDv_id(String dv_id) {
		this.dv_id = dv_id;
	}
	public String getDv_name() {
		return dv_name;
	}
	public void setDv_name(String dv_name) {
		this.dv_name = dv_name;
	}
	public String getDv_tel() {
		return dv_tel;
	}
	public void setDv_tel(String dv_tel) {
		this.dv_tel = dv_tel;
	}
	public String getDv_address() {
		return dv_address;
	}
	public void setDv_address(String dv_address) {
		this.dv_address = dv_address;
	}
	
	
}
