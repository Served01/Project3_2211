package ezen.store.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import ezen.store.beans.Mb_Bean;

@Configuration
public class RootAppContext {
	
	//login.jsp�뿉�꽌 �떎猷⑤뒗 �뜲�씠�꽣瑜� loginUserDataBean 媛앹껜�뿉 ���옣�븷 �삁�젙 �엯�땲�떎.
	// 洹몃━怨�, login.jsp�뿉�꽌 �떎猷� �떎�젣 鍮덉� tempUserDataBean�씠�씪怨� �꽕�젙�븯怨� �궗�슜 �삁�젙�엯�땲�떎.
	  @Bean("loginMbBean")
	  @SessionScope public Mb_Bean loginMbBean() { 
		  return new Mb_Bean(); 
	}
	 
}
