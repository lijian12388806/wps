package com.liveneo.plat.test;



import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.liveneo.plat.hibernate.dao.Authority;
import com.liveneo.plat.security.service.AuthorityService;

public class UserTest {
	@Test
	public void testSave(){
		ApplicationContext act = new ClassPathXmlApplicationContext("config/spring/applicationContext.xml");
		AuthorityService  as = (AuthorityService) act.getBean("authorityService");
//		as.saveOrUpdate(new Authority());
		System.out.println("***********"+as);
		
	}
}
