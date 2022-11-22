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
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import ezen.store.beans.Mb_Bean;
import ezen.store.interceptor.CheckLoginInterceptor;
import ezen.store.interceptor.LoginInterceptor;
import ezen.store.mapper.Dv_Mapper;
import ezen.store.mapper.Mb_Mapper;

//Controller 
@Configuration
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
	
	@Value("${db.username}") // hyun3
	private String db_username;
	
	@Value("${db.password}") // 1234
	private String db_password;
	
	@Autowired
	private Mb_Bean loginMbBean;
	
	@Autowired
	private Mb_Bean loginShowBean;
	
	//Controller.
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
	
	//
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		
		source.setDriverClassName(db_classname); 
		source.setUrl(db_url); 
		source.setUsername(db_username); 
		source.setPassword(db_password); 
		
		return source;
	}
	
	//
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception {
		
		SqlSessionFactoryBean fSessionFactory = new SqlSessionFactoryBean();
		fSessionFactory.setDataSource(source); 
		
		SqlSessionFactory factory = fSessionFactory.getObject(); 
				
		return factory;
	}
	
	//
//	@Bean
//	public MapperFactoryBean<BoardMapper> getMapperFactoryBean2(SqlSessionFactory factory){
//		MapperFactoryBean<BoardMapper> factoryBean2 = new MapperFactoryBean<BoardMapper>(BoardMapper.class);
//		
//		factoryBean2.setSqlSessionFactory(factory); 
//		
//		return factoryBean2;
//		
//	}
		@Bean
		public MapperFactoryBean<Mb_Mapper> getMapperFactoryBean(SqlSessionFactory factory){
		
		MapperFactoryBean<Mb_Mapper> factoryBean = new MapperFactoryBean<Mb_Mapper>(Mb_Mapper.class);
		
		factoryBean.setSqlSessionFactory(factory); 
		
		return factoryBean;
	}
	
		//Mb_Mapper 등록
//		@Bean
//		public MapperFactoryBean<Mb_Mapper> getUserMapper(SqlSessionFactory factory){
//			MapperFactoryBean<Mb_Mapper> factoryBean = new MapperFactoryBean<Mb_Mapper>(Mb_Mapper.class);
//			
//				factoryBean.setSqlSessionFactory(factory); 
//			
//				return factoryBean;		
//		}
//		
		//Dv_Mapper 등록
		@Bean
		public MapperFactoryBean<Dv_Mapper> getDv_Mapper(SqlSessionFactory factory){
			MapperFactoryBean<Dv_Mapper> factoryBean2 = new MapperFactoryBean<Dv_Mapper>(Dv_Mapper.class);

				factoryBean2.setSqlSessionFactory(factory);
					
				return factoryBean2;			
		}
				
		// 로그인이 된 사용자 체크하는 인터셉터 부분
		public void addInterceptors(InterceptorRegistry registry) {
		
		WebMvcConfigurer.super.addInterceptors(registry);	
		
		LoginInterceptor loginInterceptor = new LoginInterceptor(loginShowBean, loginMbBean);		
		InterceptorRegistration registration1 = registry.addInterceptor(loginInterceptor);
			
		registration1.addPathPatterns("/**");		
	
//		//로그인이 되어있는지 확인하고 제어하는 인터셉터(단위 테스트 할때는 꺼야함)
//		CheckLoginInterceptor checkLoginInterceptor = new CheckLoginInterceptor(loginMbBean);
//	
//		InterceptorRegistration registration2 = registry.addInterceptor(checkLoginInterceptor);
//	
//		registration2.addPathPatterns("/member/Mbupdate", "/member/Mblogout", "/member/Mblist", "/member/Mbselect", "/member/Mbdelete", "/board/*");
//		registration2.excludePathPatterns("index");
	}
	
	//
	@Bean
	public static PropertySourcesPlaceholderConfigurer PropertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	
	//
	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
		
		res.setBasenames("/WEB-INF/properties/error_message");
		
		return res; 
	}	
	
	//
	@Bean
	public StandardServletMultipartResolver multipartResolver() {
		
		return new StandardServletMultipartResolver();
	}
	
	
}













