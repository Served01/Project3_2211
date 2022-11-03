package ezen.store.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class CartDataBean {
	
	private int ca_number; 
	
	//@Size(min=2, max=30)
	//@Pattern(regexp = "[a-zA-Z가-힣]*")
	private String ca_mbid;
	
	//@Size(min=8, max=15)
	private int ca_bknumber;
	
	//@Size(min=8, max=15)
	private int ca_bkcount;
	
	private boolean userIdExist;
	
	private boolean userlogin;
	
	
	//생성자 주입 단, 한번만 실행
	public CartDataBean() {
		this.userIdExist = false;
		this.userlogin = false;
	}
	
	public int getCa_number() {
		return ca_number;
	}

	public void setCa_number(int ca_number) {
		this.ca_number = ca_number;
	}

	public String getCa_mbid() {
		return ca_mbid;
	}

	public void setCa_mbid(String ca_mbid) {
		this.ca_mbid = ca_mbid;
	}

	public int getCa_bknumber() {
		return ca_bknumber;
	}

	public void setCa_bknumber(int ca_bknumber) {
		this.ca_bknumber = ca_bknumber;
	}

	public int getCa_bkcount() {
		return ca_bkcount;
	}

	public void setCa_bkcount(int ca_bkcount) {
		this.ca_bkcount = ca_bkcount;
	}

	public boolean isUserIdExist() {
		return userIdExist;
	}

	public void setUserIdExist(boolean userIdExist) {
		this.userIdExist = userIdExist;
	}

	public boolean isUserlogin() {
		return userlogin;
	}

	public void setUserlogin(boolean userlogin) {
		this.userlogin = userlogin;
	}
	
}
