package com.liveneo.plat.hibernate.dao;

import java.util.HashSet;
import java.util.Set;

public class Authority {

	/**
	 * id
	 */
	private Integer id;
	/**
	 * 权限名称. 供 SpringSecurity 使用的权限的名字. 例如: ROLE_USER_UPDATE
	 */
	private String name; // ROLE_USER_UPDATE
	/**
	 * 在页面上显示的权限的名称. 例如: 用户信息的修改
	 */
	private String displayName; // 用户信息修改
	/**
	 * 与当前权限关联的权限信息, 多个权限的 id 使用 "," 分隔. 例如: ,3,4,6,
	 */
	private String relatedAuthorites;
	/**
	 * 当前权限的父权限
	 */
	private Authority parentAuthority; // 用户管理
	/**
	 * 当前权限的子权限
	 */
	private Set<Authority> subAuthorities = new HashSet<Authority>();
	/**
	 * 进入当前权限的 Resource 引用, 和 Resource 之间是多对一的关联关系
	 */
	private Resource mainResource;

	public Authority(Integer id) {
		super();
		this.id = id;
	}
	
	public Authority() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public String getRelatedAuthorites() {
		return relatedAuthorites;
	}

	public void setRelatedAuthorites(String relatedAuthorites) {
		this.relatedAuthorites = relatedAuthorites;
	}

	public Authority getParentAuthority() {
		return parentAuthority;
	}

	public void setParentAuthority(Authority parentAuthority) {
		this.parentAuthority = parentAuthority;
	}

	public Set<Authority> getSubAuthorities() {
		return subAuthorities;
	}

	public void setSubAuthorities(Set<Authority> subAuthorities) {
		this.subAuthorities = subAuthorities;
	}

	public Resource getMainResource() {
		return mainResource;
	}

	public void setMainResource(Resource mainResource) {
		this.mainResource = mainResource;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Authority other = (Authority) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	

}
