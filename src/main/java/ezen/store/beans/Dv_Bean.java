package ezen.store.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Dv_Bean {
	
	private String mb_id;
	
	private String dv_nick;
	
	@Size(min=2, max=45)
	@Pattern(regexp = "[a-zA-Z가-힣]*")
	private String dv_name;
	
	@Size(min=2, max=15)
	private String dv_tel;
	
	@Size(min=2, max=180)
	@Pattern(regexp = "[0-9a-zA-Z가-힣]*")
	private String dv_address;
	
	private String dv_pk;

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getDv_nick() {
		return dv_nick;
	}

	public void setDv_nick(String dv_nick) {
		this.dv_nick = dv_nick;
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

	public String getDv_pk() {
		return dv_pk;
	}

	public void setDv_pk(String dv_pk) {
		this.dv_pk = dv_pk;
	}
	
	
	
	
}
