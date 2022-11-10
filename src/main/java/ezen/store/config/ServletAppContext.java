package ezen.store.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import ezen.store.mapper.Bk_Mapper;
import ezen.store.service.Bk_Service;

//Spring MVC
@Configuration
//Controller
@EnableWebMvc
@ComponentScan("ezen.store.controller")
@ComponentScan("ezen.store.dao")
@ComponentScan("ezen.store.service")
@PropertySource("/WEB-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer{
	
	@Value("${db.classname}") // oracle.jdbc.OracleDriver
	private String db_classname;
	
	@Value("${db.url}")  // jdbc:oracle:thin:@localhost:1521:xe
	private String db_url;
	
	@Value("${db.username}") // admin
	private String db_username;
	
	@Value("${db.password}") // 1234
	private String db_password;
	
	@SuppressWarnings("unused")
	@Autowired
	private Bk_Service bk_Service;
	
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
	}
	//데이터베이스 접속 정보 관리하는 빈 등록
		@Bean
		public BasicDataSource dataSource() {
			BasicDataSource source = new BasicDataSource();
			
			source.setDriverClassName(db_classname); 
			source.setUrl(db_url); 
			source.setUsername(db_username); 
			source.setPassword(db_password); 
			
			return source;		
		}
		
		//Query문과 접속 정보를 관리하는 객체 생성
		@Bean
		public SqlSessionFactory factory(BasicDataSource source) throws Exception {
			
			SqlSessionFactoryBean fSessionFactory = new SqlSessionFactoryBean();
			fSessionFactory.setDataSource(source); 
			
			SqlSessionFactory factory = fSessionFactory.getObject(); 
					
			return factory;		
		}
		
		//Query 실행을 위한 객체를 관리(Mapper 관리)
		@Bean
		public MapperFactoryBean<Bk_Mapper> getMapperFactoryBean(SqlSessionFactory factory){
			MapperFactoryBean<Bk_Mapper> factoryBean = new MapperFactoryBean<Bk_Mapper>(Bk_Mapper.class);
			
			factoryBean.setSqlSessionFactory(factory); 
			
			return factoryBean;
			
		}
		
		// 스탠다드서블릿멀티파트리졸버 등록 (upload/download 용도)
		@Bean
		public StandardServletMultipartResolver multipartResolver() {
			
			return new StandardServletMultipartResolver();
		}

		// 두개의 서로다른 properties 설정이 충돌나지 않도록 합니다.
		@Bean
		public static PropertySourcesPlaceholderConfigurer PropertySourcesPlaceholderConfigurer() {
			return new PropertySourcesPlaceholderConfigurer();
		
		}
		
		//메시지 등록
		@Bean
		public ReloadableResourceBundleMessageSource messageSource() {
			ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
			
			res.setBasenames("/WEB-INF/properties/error_message");
			
			return res;
		}

}












