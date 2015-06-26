/**
 *
 * 
 * 
 */
package com.liveneo.plat.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.FactoryBean;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.access.intercept.DefaultFilterInvocationSecurityMetadataSource;
import org.springframework.security.web.util.AntPathRequestMatcher;
import org.springframework.security.web.util.RequestMatcher;

/**
 * 在此实现定义的逻辑:访问数据库,获取哪些资源url需要受保护,
 * 以及访问这些资源需要具备的权限authority
 * 
 * @version 1.0
 * @author LiaoGang
 */

public class WspDefaultFilterInvocationSecurityMetadataSource implements
		FactoryBean {

	private SecurityMetadataSourceMapBuilder mapBuilder;
	
	public DefaultFilterInvocationSecurityMetadataSource getObject()
			throws Exception {
		
		LinkedHashMap<RequestMatcher, Collection<ConfigAttribute>> requestMap = new LinkedHashMap<RequestMatcher, Collection<ConfigAttribute>>();
		AntPathRequestMatcher matcher = null;
		Collection<ConfigAttribute> attributes = null;
		Map<String, List<String>> srcMap = mapBuilder.buildSrcMap();
		
		for(Map.Entry<String, List<String>> entry : srcMap.entrySet()) {
			String url = entry.getKey();
			List<String> attributyString = entry.getValue();
			
			matcher = new AntPathRequestMatcher(url);
			attributes = new ArrayList();
			
			for(String attributy : attributyString) {
				attributes.add(new SecurityConfig(attributy));
			}
			
			requestMap.put(matcher, attributes);
		}
		
		DefaultFilterInvocationSecurityMetadataSource securityMetadataSource
			= new DefaultFilterInvocationSecurityMetadataSource(requestMap);
		return securityMetadataSource;
	}

	public Class<?> getObjectType() {
		return WspDefaultFilterInvocationSecurityMetadataSource.class;
	}

	public boolean isSingleton() {
		return true;
	}
}
