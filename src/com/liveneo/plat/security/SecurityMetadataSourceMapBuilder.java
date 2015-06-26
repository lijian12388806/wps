/**
 * 软件著作权：
 * 系统名称：
 * 创建日期： 
 */
package com.liveneo.plat.security;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import com.liveneo.plat.hibernate.dao.Authority;

/**
 * SecurityMetadataSourceMapBuilder接口的具体实现
 * @version 1.0
 * @author LiaoGang
 */

public class SecurityMetadataSourceMapBuilder{
	
	
	/**
	 * 构造资源与权限对应的Map集合
	 * 哪些权限可以访问哪些资源
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public LinkedHashMap<String, List<String>> buildSrcMap() {
		LinkedHashMap<String, List<String>> srcMap = new LinkedHashMap<String, List<String>>();
		List<Authority>  authoritys = null;
//		authoritys = authorityDAO.getAll("Authority");  //此处获取所有的权限
		for(Authority authority : authoritys) {
			String url = authority.getMainResource().getUrl();
			List<String> roleNames = new ArrayList<String>();
			roleNames.add(authority.getName());
			srcMap.put(url, roleNames);
		}
		return srcMap;
	}
}
