package com.liveneo.plat.security.service;

import java.util.List;


import com.liveneo.plat.hibernate.dao.Authority;
import com.liveneo.plat.hibernate.dao.basedao.AuthorityDao;
import com.liveneo.plat.service.base.BaseService;



public class AuthorityService extends BaseService<Authority>{


	public List<Authority> getParentAuthorities(){
		AuthorityDao authorityDao = (AuthorityDao) baseDao;
		return authorityDao.getParentAuthorities();
	}
	
}
