package com.liveneo.plat.hibernate.dao.dao;

import org.hibernate.Session;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.liveneo.plat.hibernate.dao.Userinfo;
import com.liveneo.plat.hibernate.dao.base.BaseUserinfoDAO;
import com.liveneo.plat.structres.UserInfo;


public class UserinfoDAO extends BaseUserinfoDAO implements com.liveneo.plat.hibernate.dao.dao.iface.UserinfoDAO {

	public UserinfoDAO () {}
	
	public UserinfoDAO (Session session) {
		super(session);
	}
	

    /**
	 * Return all objects related to the implementation of this DAO with no filter.
	 */
	@SuppressWarnings("unchecked")
	public java.util.List<com.liveneo.plat.hibernate.dao.Userinfo> findByCriteria(org.hibernate.criterion.DetachedCriteria detachedCriteria){
		return  getHibernateTemplate().findByCriteria(detachedCriteria);
	}

	/**
	 * Return all objects related to the implementation of this DAO with no filter.
	 */
	@SuppressWarnings("unchecked")
	public java.util.List<com.liveneo.plat.hibernate.dao.Userinfo> findByCriteria(org.hibernate.criterion.DetachedCriteria detachedCriteria,int firstResult,int resultCount){
		return  getHibernateTemplate().findByCriteria(detachedCriteria,firstResult,resultCount);
	}
	
	public java.util.List findBySQL(String queryString) {
		return super.findBySQL(queryString);
	}
	public java.util.List findByNamedQuery(final String queryName,final Object parameter) {
  		final String queryString = "from com.liveneo.plat.hibernate.dao.Userinfo where "
			+ queryName + "= ?";
		return (java.util.List) getHibernateTemplate().execute(new HibernateCallback() {   
            public Object doInHibernate(Session session) throws HibernateException {   
                Query query = session.createQuery(queryString);
                if (parameter!=null){
                        query.setParameter(0, parameter);   
                    }   
                return query.list();   
            }   
        }, true);  		
    }
	public java.util.List findByExample(com.liveneo.plat.hibernate.dao.Userinfo userinfo) {
  		return getHibernateTemplate().findByExample(userinfo);
    }
    public java.util.List findByHql(String hql){
			return  getHibernateTemplate().find(hql);
	}
	public	com.liveneo.plat.hibernate.dao.Userinfo getByUniqueIndex(
			final DetachedCriteria detachedCriteria) {
		com.liveneo.plat.hibernate.dao.Userinfo object = (com.liveneo.plat.hibernate.dao.Userinfo) getHibernateTemplate()
				.execute(new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException {
						Criteria criteria = detachedCriteria
								.getExecutableCriteria(session);
						return criteria.uniqueResult();
					}
				}, true);
		return object;
	}

	public com.liveneo.plat.hibernate.dao.Userinfo getByUniqueIndex(
			String colname, Object colvalue) {
		DetachedCriteria detachedCriteria = DetachedCriteria
				.forClass(com.liveneo.plat.hibernate.dao.Userinfo.class);
		detachedCriteria.add(Restrictions.eq(colname, colvalue));
		return this.getByUniqueIndex(detachedCriteria);
	}
	
	public Criteria getCriteria(Criterion ... criterions){
		Criteria criteria = getSession().createCriteria(Userinfo.class);
		
		for(Criterion criterion: criterions){
			criteria.add(criterion);
		}
		
		return criteria;
	}
	
	
	public Userinfo getBy(String propertyName, Object propertyVal){
		Criterion criterion = Restrictions.eq(propertyName, propertyVal);
		return (Userinfo) getCriteria(criterion).uniqueResult();
	}

//	public UserInfo getByName(UserInfo user) {
//		String sql =  "from UserInfo user where user.username='"
//				+ user.getUsername() + "'";
//		return null;
//	}

	public UserInfo getByName(String username) {
		Criterion criterion = Restrictions.eq(username, username);
		
		return (UserInfo) getCriteria(criterion).uniqueResult();
	}
}