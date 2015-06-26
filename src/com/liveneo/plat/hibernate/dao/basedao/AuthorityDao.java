package com.liveneo.plat.hibernate.dao.basedao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.liveneo.plat.hibernate.HibernateSessionFactory;
import com.liveneo.plat.hibernate.dao.Authority;



public class AuthorityDao extends BaseDao<Authority>{

	public List<Authority> getParentAuthorities(){
		Criteria criteria = getSession().createCriteria(Authority.class);
		Criterion criterion = Restrictions.isNull("parentAuthority");
		
		criteria.add(criterion);
		return criteria.list();
	}
	
}
