package kr.co.ezen.beans;

import java.sql.Date;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

//사용자 정보 테이블 참조 
public class joinDataBean {

	private int user_idx;
	
	private String mb_id;
	
	private String mb_pw;
	
	private String mb_name;
	
    private String mb_email;
	
	private String mb_tel;
	
	private Date mb_date;

	public int getUser_idx() {
		return user_idx;
	}

	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getMb_pw() {
		return mb_pw;
	}

	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}

	public String getMb_name() {
		return mb_name;
	}

	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}

	public String getMb_email() {
		return mb_email;
	}

	public void setMb_email(String mb_email) {
		this.mb_email = mb_email;
	}

	public String getMb_tel() {
		return mb_tel;
	}

	public void setMb_tel(String mb_tel) {
		this.mb_tel = mb_tel;
	}

	public Date getMb_date() {
		return mb_date;
	}

	public void setMb_date(Date mb_date) {
		this.mb_date = mb_date;
	}
	

	
}
