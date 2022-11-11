package ezen.store.beans;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Rv_Bean {
	
	private int rv_number;
	
	private int rv_bknumber;
	
	@NotBlank
	@Pattern(regexp="[a-zA-Z1-9]{2,20}")
	private String rv_id;
	
	
	private String rv_date;
	
	@Min(0)
	@Max(5)
	private int rv_score;
	
	// 한글은 UTF-8 기준으로 3바이트를 차지한다. 영어는 1바이트를 차지한다.
	@Size(min=0, max=1500)
	private String rv_content;
	
	private String rv_deleted;
	
	public int getRv_number() {
		return rv_number;
	}
	public void setRv_number(int rv_number) {
		this.rv_number = rv_number;
	}
	public int getRv_bknumber() {
		return rv_bknumber;
	}
	public void setRv_bknumber(int rv_bknumber) {
		this.rv_bknumber = rv_bknumber;
	}
	public String getRv_id() {
		return rv_id;
	}
	public void setRv_id(String rv_id) {
		this.rv_id = rv_id;
	}
	public String getRv_date() {
		return rv_date;
	}
	public void setRv_date(String rv_date) {
		this.rv_date = rv_date;
	}
	public int getRv_score() {
		return rv_score;
	}
	public void setRv_score(int rv_score) {
		this.rv_score = rv_score;
	}
	public String getRv_content() {
		return rv_content;
	}
	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}
	public String getRv_deleted() {
		return rv_deleted;
	}
	public void setRv_deleted(String rv_deleted) {
		this.rv_deleted = rv_deleted;
	}
	
	
	
}
