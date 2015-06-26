package com.liveneo.plat.hibernate.dao;

import java.util.HashSet;
import java.util.Set;

public class Resource {

	// id
	private Integer resourceId;
	// 对应的 url. 为相对于当前 WEB 应用的根路径
	private String url;
	//能够访问当前资源的权限的集合
	private Set<Authority> authorities = new HashSet<Authority>();

	public Integer getResourceId() {
		return resourceId;
	}

	public void setResourceId(Integer resourceId) {
		this.resourceId = resourceId;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Set<Authority> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(Set<Authority> authorities) {
		this.authorities = authorities;
	}

}
