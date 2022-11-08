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
	private String path_upload;
	
	@Autowired
	private Bk_DAO bk_DAO;
		
	@SuppressWarnings("unused")
	private String saveUploadfile(MultipartFile upload_file) {
		
		String file_name = upload_file.getOriginalFilename();
		
		try {
			upload_file.transferTo(new File(path_upload + "/" + file_name));  
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return file_name;
	}

	public void addBk_info(Bk_Bean insert_bk_Bean) {
		
		MultipartFile upload_file = insert_bk_Bean.getUpload_file();
		
		if(upload_file.getSize() > 0) {			
			String file_name = saveUploadfile(upload_file);
					
			insert_bk_Bean.setBk_image(file_name);
		}

		bk_DAO.addBk_info(insert_bk_Bean);
		
		}
		
	}


