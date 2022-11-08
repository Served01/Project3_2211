package ezen.store.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ezen.store.beans.ContentDataBean;
import ezen.store.mapper.BoardMapper;

@Repository
public class BoardDAO {

	@Autowired
	private BoardMapper boardMapper;
	
	  public void addContentInfo(ContentDataBean writeContentDataBean) {		  
		  boardMapper.addContentInfo(writeContentDataBean);		  
	  }	
	  
	  //
	  public String getBoardInfoName(int board_info_idx) {		  
		  return boardMapper.getBoardInfoName(board_info_idx); 		  
	  }
	
	  //
	  public List<ContentDataBean> getContentList(int board_info_idx){		  
		  return boardMapper.getContentList(board_info_idx); 		  
	  }
	  
	  //
	  public ContentDataBean getContentInfo(int content_idx) {
		  
		  return boardMapper.getContentInfo(content_idx); 
	  }
	  
	  
	  
}
