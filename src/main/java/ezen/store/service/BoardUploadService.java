package ezen.store.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import ezen.store.beans.ContentDataBean;
import ezen.store.beans.Mb_Bean;
import ezen.store.dao.BoardDAO;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class BoardUploadService {

	@Value("${path.upload}")
	private String path_upload;
	
	@Autowired
	private BoardDAO boardDAO;	
	
	@Autowired
	private Mb_Bean login_mb_Bean;
	
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
	
	public void addContentInfo(ContentDataBean writeContentDataBean) {
		
		MultipartFile upload_file = writeContentDataBean.getUpload_file();
		
		if(upload_file.getSize() > 0) {			
			String file_name = saveUploadfile(upload_file);
					
			writeContentDataBean.setContent_file(file_name);
		}
	}
		
		//login �긽�깭 泥댄겕�븯�뿬 upload
//		writeContentDataBean.setContent_write_idx(login_mb_Bean.getMb_id()); 
//		
//		boardDAO.addContentInfo(writeContentDataBean); 
//	}
	//
	public String getBoardInfoName(int board_info_idx) {	
		
		  return boardDAO.getBoardInfoName(board_info_idx); 		  
	  }
	
	//
	public List<ContentDataBean> getContentList(int board_info_idx){	  
	  return boardDAO.getContentList(board_info_idx); 	  
	}
	
	//
	 public ContentDataBean getContentInfo(int content_idx) {
		  
		  return boardDAO.getContentInfo(content_idx); 
	  }
	
	
}
