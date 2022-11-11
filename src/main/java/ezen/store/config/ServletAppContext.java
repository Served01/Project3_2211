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
import ezen.store.interceptor.TopMenuInterceptor;
import ezen.store.mapper.BoardMapper;
import ezen.store.mapper.Mb_Mapper;
import ezen.store.mapper.TopMenuMapper;
import ezen.store.service.TopMenuService;

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
	
	@Value("${db.username}") // hyun3
	private String db_username;
	
	@Value("${db.password}") // 1234
	private String db_password;
	
	@Autowired //call by Type
	private TopMenuService topMenuService;
	
	@Autowired
	private Mb_Bean loginMbBean;
	
	
	// Controller.
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}	

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
	}
	
	//�뜲�씠�꽣踰좎씠�뒪 �젒�냽 �젙蹂� 愿�由ы븯�뒗 鍮� �벑濡�
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		
		source.setDriverClassName(db_classname); 
		source.setUrl(db_url); 
		source.setUsername(db_username); 
		source.setPassword(db_password); 
		
		return source;		
	}
	
	//Query臾멸낵 �젒�냽 �젙蹂대�� 愿�由ы븯�뒗 媛앹껜 �깮�꽦
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception {
		
		SqlSessionFactoryBean fSessionFactory = new SqlSessionFactoryBean();
		fSessionFactory.setDataSource(source); 
		
		SqlSessionFactory factory = fSessionFactory.getObject(); 
				
		return factory;		
	}
	
	//Query �떎�뻾�쓣 �쐞�븳 媛앹껜瑜� 愿�由�(Mapper 愿�由�)
	@Bean
	public MapperFactoryBean<BoardMapper> getMapperFactoryBean2(SqlSessionFactory factory){
		MapperFactoryBean<BoardMapper> factoryBean2 = new MapperFactoryBean<BoardMapper>(BoardMapper.class);
		
		factoryBean2.setSqlSessionFactory(factory); 
		
		return factoryBean2;
		
	}
//	@Bean
	public MapperFactoryBean<Mb_Mapper> getMapperFactoryBean(SqlSessionFactory factory){
		
		MapperFactoryBean<Mb_Mapper> factoryBean = new MapperFactoryBean<Mb_Mapper>(Mb_Mapper.class);
		
		factoryBean.setSqlSessionFactory(factory); 
		
		return factoryBean;
	}
	
	//TopMenuMapper �벑濡�
	@Bean
	public MapperFactoryBean<TopMenuMapper> getTopMenuList(SqlSessionFactory factory){
		MapperFactoryBean<TopMenuMapper> factoryBean = new MapperFactoryBean<TopMenuMapper>(TopMenuMapper.class);
		
		factoryBean.setSqlSessionFactory(factory); 
				
		return factoryBean;		
	}
	
	//UserMapper �벑濡�
		@Bean
		public MapperFactoryBean<Mb_Mapper> getUserMapper(SqlSessionFactory factory){
			MapperFactoryBean<Mb_Mapper> factoryBean = new MapperFactoryBean<Mb_Mapper>(Mb_Mapper.class);
			
			factoryBean.setSqlSessionFactory(factory); 
			
			return factoryBean;		
		}
		
	// Secure Coding
	// 紐⑤뱺 �슂泥� 二쇱냼�뒗 臾댁“嫄� �씤�꽣�뀎�꽣瑜� �넻怨쇳븯�룄濡� �빐�빞 �빀�땲�떎.(/**) 
	
	public void addInterceptors(InterceptorRegistry registry) {
		
		WebMvcConfigurer.super.addInterceptors(registry);	
		
		TopMenuInterceptor topMenuInterceptor = new TopMenuInterceptor(topMenuService, loginMbBean);		
		InterceptorRegistration registration1 = registry.addInterceptor(topMenuInterceptor);
			
		registration1.addPathPatterns("/**");		
		
		//CheckLoginInterceptor �벑濡� : �젙蹂댁닔�젙, 濡쒓렇�븘�썐
		CheckLoginInterceptor checkLoginInterceptor = new CheckLoginInterceptor(loginMbBean);
		
		InterceptorRegistration registration2 = registry.addInterceptor(checkLoginInterceptor);
		
		registration2.addPathPatterns("/member/Mb_update", "/member/Mb_logout", "/board/*");// �씤�꽣�뀎�꽌 �넻怨쇳븯�룄濡� �쑀�룄
		registration2.excludePathPatterns("/board/main"); // �씤�꽣�뀎�꽣 �젣�쇅
		
	}
	
	// �몢媛쒖쓽 �꽌濡쒕떎瑜� properties �꽕�젙�씠 異⑸룎�굹吏� �븡�룄濡� �빀�땲�떎.
	@Bean
	public static PropertySourcesPlaceholderConfigurer PropertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	
	//硫붿떆吏� �벑濡�
	@Bean
	public ReloadableResourceBundleMessageSource messageSource() {
		ReloadableResourceBundleMessageSource res = new ReloadableResourceBundleMessageSource();
		
		res.setBasenames("/WEB-INF/properties/error_message");
		
		return res; 
	}	
	
	// �뒪�깲�떎�뱶�꽌釉붾┸硫��떚�뙆�듃由ъ「踰� �벑濡� (upload/download �슜�룄)
	@Bean
	public StandardServletMultipartResolver multipartResolver() {
		
		return new StandardServletMultipartResolver();
	}
	
	
}













