package ezen.store.beans;

import java.sql.Date;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class OrderDataBean {
	
	private int or_number; 
	
	//@Size(min=2, max=30)
	//@Pattern(regexp = "[a-zA-Z가-힣]*")
	private String or_mbid;
	
	//@Size(min=8, max=15)
	private int or_bknumber;
	
	private int or_bkprice;
	
	//@Size(min=8, max=15)
	private int or_bkcount;
	
	private int or_cacount;
	
	private int or_status;
	
	private Date or_date;
	
	private int or_delivery;
	
	private String or_addres;
	
	private boolean userIdExist;
	
	private boolean userlogin;
	
	
	//생성자 주입 단, 한번만 실행
	public OrderDataBean() {
		this.userIdExist = false;
		this.userlogin = false;
	}
	
	

	public int getOr_number() {
		return or_number;
	}

	public void setOr_number(int or_number) {
		this.or_number = or_number;
	}

	public String getOr_mbid() {
		return or_mbid;
	}

	public void setOr_mbid(String or_mbid) {
		this.or_mbid = or_mbid;
	}

	public int getOr_bknumber() {
		return or_bknumber;
	}

	public void setOr_bknumber(int or_bknumber) {
		this.or_bknumber = or_bknumber;
	}

	public int getOr_bkprice() {
		return or_bkprice;
	}

	public void setOr_bkprice(int or_bkprice) {
		this.or_bkprice = or_bkprice;
	}

	public int getOr_bkcount() {
		return or_bkcount;
	}

	public void setOr_bkcount(int or_bkcount) {
		this.or_bkcount = or_bkcount;
	}

	public int getOr_cacount() {
		return or_cacount;
	}

	public void setOr_cacount(int or_cacount) {
		this.or_cacount = or_cacount;
	}

	public int getOr_status() {
		return or_status;
	}

	public void setOr_status(int or_status) {
		this.or_status = or_status;
	}

	public Date getOr_date() {
		return or_date;
	}

	public void setOr_date(Date or_date) {
		this.or_date = or_date;
	}

	public int getOr_delivery() {
		return or_delivery;
	}

	public void setOr_delivery(int or_delivery) {
		this.or_delivery = or_delivery;
	}

	public String getOr_addres() {
		return or_addres;
	}

	public void setOr_addres(String or_addres) {
		this.or_addres = or_addres;
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
