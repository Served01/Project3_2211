package ezen.store.beans;

import java.sql.Date;

public class Or_Bean {
	
	private String or_number; 
	private String or_mbid;
	private int or_bknumber;
	private int or_bkprice;
	private int or_bkcount;
	private int or_cacount;
	private int or_status;
	private String or_date;
	private int or_delivery;
	private String or_address;
	
	private String bk_title;
	private String bk_writer;
	private String bk_publisher;
	private String bk_image;
	

	public String getOr_number() {
		return or_number;
	}
	public void setOr_number(String or_number) {
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
	public String getOr_date() {
		return or_date;
	}
	public void setOr_date(String or_date) {
		this.or_date = or_date;
	}
	public int getOr_delivery() {
		return or_delivery;
	}
	public void setOr_delivery(int or_delivery) {
		this.or_delivery = or_delivery;
	}
	public String getOr_address() {
		return or_address;
	}
	public void setOr_addres(String or_address) {
		this.or_address = or_address;
	}
	
	
	public String getBk_title() {
		return bk_title;
	}
	public void setBk_title(String bk_title) {
		this.bk_title = bk_title;
	}
	public String getBk_writer() {
		return bk_writer;
	}
	public void setBk_writer(String bk_writer) {
		this.bk_writer = bk_writer;
	}
	public String getBk_publisher() {
		return bk_publisher;
	}
	public void setBk_publisher(String bk_publisher) {
		this.bk_publisher = bk_publisher;
	}
	public String getBk_image() {
		return bk_image;
	}
	public void setBk_image(String bk_image) {
		this.bk_image = bk_image;
	}
	public void setOr_address(String or_address) {
		this.or_address = or_address;
	}
	
}
