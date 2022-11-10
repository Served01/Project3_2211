package ezen.store.beans;

import java.sql.Date;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

//�궗�슜�옄 �젙蹂� �뀒�씠釉� 李몄“ 
public class Mb_Bean {

	private int mb_idx;

	@Size(min = 2, max = 8)
	@Pattern(regexp = "[a-zA-Z0-9]*")
	private String mb_id;

	private String mb_name;

	private String mb_pw;

	private String mb_pw2;

	private String mb_email;

	private String mb_tel;

	private Date mb_date;

	private boolean mbIdExist;

	private boolean mblogin;

	public String getMb_id() {
		return mb_id;
	}

	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}

	public String getMb_name() {
		return mb_name;
	}

	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}

	public String getMb_pw() {
		return mb_pw;
	}

	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}

	public String getMb_pw2() {
		return mb_pw2;
	}

	public void setMb_pw2(String mb_pw2) {
		this.mb_pw2 = mb_pw2;
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

	public boolean isMbIdExist() {
		return mbIdExist;
	}

	// �깮�꽦�옄 二쇱엯 �떒, �븳踰덈쭔 �떎�뻾
	public Mb_Bean() {
		this.mbIdExist = false;
		this.mblogin = false;
	}

	public void setMbIdExist(boolean mbIdExist) {
		this.mbIdExist = mbIdExist;
	}

	public boolean isMblogin() {
		return mblogin;
	}

	public void setMblogin(boolean mblogin) {
		this.mblogin = mblogin;
	}

	public Date getMb_date() {
		return mb_date;
	}

	public void setMb_date(Date mb_date) {
		this.mb_date = mb_date;
	}

	public int getMb_idx() {
		return mb_idx;
	}

	public void setMb_idx(int mb_idx) {
		this.mb_idx = mb_idx;
	}

}

