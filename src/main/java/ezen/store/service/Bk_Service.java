package ezen.store.service;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import ezen.store.beans.Bk_Bean;
import ezen.store.dao.Bk_DAO;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class Bk_Service {
	
	@Value("${path.upload}")
	private String PathUpload;
	
	@Autowired
	private Bk_DAO BkDAO;
	
	//책 일련번호 중복확인 관련 서비스
	public boolean CheckBkNumExist(int bk_number) {		
		String bk_writer = BkDAO.CheckBkNumExist(bk_number);		
		if(bk_writer == null) {
			return true;
		}else {
			return false;		
		}
		
	}
	
	//업로드 받은 파일명 관련 서비스
	@SuppressWarnings("unused")
	private String SaveUploadFile(MultipartFile upload_file) {
		
		String file_name = upload_file.getOriginalFilename();
		
		try {
			upload_file.transferTo(new File(PathUpload + "/" + file_name));  
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return file_name;
	}
	
	//책 정보 입력, 업로드 이미지 관련 서비스
	public void addBkInfo(Bk_Bean InsertBkBean) {
		
		MultipartFile upload_file = InsertBkBean.getUpload_file();
		
		if(upload_file.getSize() > 0) {			
			String file_name = SaveUploadFile(upload_file);
					
			InsertBkBean.setBk_image(file_name);
		}

		BkDAO.addBkInfo(InsertBkBean);
		
		}
		
	}


