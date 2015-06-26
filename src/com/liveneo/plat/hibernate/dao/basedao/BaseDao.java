package com.liveneo.plat.hibernate.dao.basedao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.hibernate.metadata.ClassMetadata;

import com.liveneo.plat.utils.ReflectionUtils;


public class BaseDao<T> {
	

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	private Class<T> entityClass;
	
	
	
	public Class<T> getEntityClass() {
		return entityClass;
	}

	public void setEntityClass(Class<T> entityClass) {
		this.entityClass = entityClass;
	}

	public BaseDao() {
		entityClass = ReflectionUtils.getSuperGenericType(getClass());
	}
	
	public void batchInsert(List<T> entities) {
		for(int i = 0; i < entities.size(); i++){
//			getSession().save(entities.get(i));
			getSession().save(entities.get(i));
			if((i + 1) % 50 == 0){
				getSession().flush();
				getSession().clear();
			}
		}
	}
	
	public T get(Integer id){
		return (T) getSession().get(entityClass, id);
	}
	
	
	
	private String getIdName(){
		ClassMetadata classMetadata = sessionFactory.getClassMetadata(entityClass);
		return classMetadata.getIdentifierPropertyName();
	}
	
	private String getEntityClassName(){
		return entityClass.getSimpleName();
	}
	
	public void saveOrUpdate(T entity){
		getSession().saveOrUpdate(entity);
	}
	
	public Criteria getCriteria(Criterion ... criterions){
		Criteria criteria = getSession().createCriteria(entityClass);
		
		for(Criterion criterion: criterions){
			criteria.add(criterion);
		}
		
		return criteria;
	}
	
	public List<T> getByForList(String propertyName, Object propertyVal){
		Criterion criterion = Restrictions.eq(propertyName, propertyVal);
		return getCriteria(criterion).list();
	}

	public T getBy(String propertyName, Object propertyVal){
		Criterion criterion = Restrictions.eq(propertyName, propertyVal);
		return (T) getCriteria(criterion).uniqueResult();
	}
	
	public List<T> getAll(){
		return getCriteria().list();
	}

}
