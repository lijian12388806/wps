package com.liveneo.plat.service.base;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.liveneo.plat.hibernate.dao.basedao.BaseDao;


public class BaseService<T> {

	
	public BaseDao<T> baseDao;
	
	

	public void setBaseDao(BaseDao<T> baseDao) {
		this.baseDao = baseDao;
	}

	@Transactional
	public T get(Integer id){
		return baseDao.get(id);
	}
	
	@Transactional
	public void saveOrUpdate(T entity){
		baseDao.saveOrUpdate(entity);
	}
	@Transactional
	public List<T> getAll(){
		return baseDao.getAll();
	}
	@Transactional
	public List<T> getByForList(String propertyName, Object propertyVal){
		return baseDao.getByForList(propertyName, propertyVal);
	}
	@Transactional
	public T getBy(String propertyName, Object propertyVal){
		return baseDao.getBy(propertyName, propertyVal);
	}
	
}
