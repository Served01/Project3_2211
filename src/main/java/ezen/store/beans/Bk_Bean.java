package ezen.store.beans;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

public class Bk_Bean {

	@NotBlank
	private String bk_number;
	private String bk_title;
	private String bk_writer;
	private String bk_publisher;
	private String bk_pubdate;
	private String bk_image;
	//upload
	private MultipartFile upload_file;
	private int bk_local;
	private int bk_genre;
	private String bk_infodate;
	private String bk_detail;
	private int bk_quantity;
	private int bk_price;
	private String bk_title_upper;
	
	private boolean checkBk_numExist;
	
	public String getBk_number() {
		return bk_number;
	}
	public void setBk_number(String bk_number) {
		this.bk_number = bk_number;
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
	public String getBk_pubdate() {
		return bk_pubdate;
	}
	public void setBk_pubdate(String bk_pubdate) {
		this.bk_pubdate = bk_pubdate;
	}	
	public String getBk_image() {
		return bk_image;
	}
	public void setBk_image(String bk_image) {
		this.bk_image = bk_image;
	}
	public MultipartFile getUpload_file() {
		return upload_file;
	}
	public void setUpload_file(MultipartFile upload_file) {
		this.upload_file = upload_file;
	}
	public int getBk_local() {
		return bk_local;
	}
	public void setBk_local(int bk_local) {
		this.bk_local = bk_local;
	}
	public int getBk_genre() {
		return bk_genre;
	}
	public void setBk_genre(int bk_genre) {
		this.bk_genre = bk_genre;
	}
	public String getBk_infodate() {
		return bk_infodate;
	}
	public void setBk_infodate(String bk_infodate) {
		this.bk_infodate = bk_infodate;
	}
	public String getBk_detail() {
		return bk_detail;
	}
	public void setBk_detail(String bk_detail) {
		this.bk_detail = bk_detail;
	}
	public int getBk_quantity() {
		return bk_quantity;
	}
	public void setBk_quantity(int bk_quantity) {
		this.bk_quantity = bk_quantity;
	}
	public int getBk_price() {
		return bk_price;
	}
	public void setBk_price(int bk_price) {
		this.bk_price = bk_price;
	}
	public String getBk_title_upper() {
		return bk_title_upper;
	}
	public void setBk_title_upper(String bk_title_upper) {
		this.bk_title_upper = bk_title_upper;
	}
	public boolean isCheckBk_numExist() {
		return checkBk_numExist;
	}
	public void setCheckBk_numExist(boolean checkBk_numExist) {
		this.checkBk_numExist = checkBk_numExist;
	}
	
	
	
}
