package com.liveneo.plat.hibernate.dao.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.liveneo.plat.hibernate.dao.base.BaseRecordfileDAO;
import com.liveneo.plat.utils.IntegerUtil;
import com.liveneo.plat.web.form.record.IpccRecordForm;


public class RecordfileDAO extends BaseRecordfileDAO implements com.liveneo.plat.hibernate.dao.dao.iface.RecordfileDAO {

	public RecordfileDAO () {}
	
	public RecordfileDAO (Session session) {
		super(session);
	}
	

    /**
	 * Return all objects related to the implementation of this DAO with no filter.
	 */
	@SuppressWarnings("unchecked")
	public java.util.List<com.liveneo.plat.hibernate.dao.Recordfile> findByCriteria(org.hibernate.criterion.DetachedCriteria detachedCriteria){
		return  getHibernateTemplate().findByCriteria(detachedCriteria);
	}

	/**
	 * Return all objects related to the implementation of this DAO with no filter.
	 */
	@SuppressWarnings("unchecked")
	public java.util.List<com.liveneo.plat.hibernate.dao.Recordfile> findByCriteria(org.hibernate.criterion.DetachedCriteria detachedCriteria,int firstResult,int resultCount){
		return  getHibernateTemplate().findByCriteria(detachedCriteria,firstResult,resultCount);
	}
	
	public java.util.List findBySQL(String queryString) {
		return super.findBySQL(queryString);
	}
	public java.util.List findByNamedQuery(final String queryName,final Object parameter) {
  		final String queryString = "from com.liveneo.plat.hibernate.dao.Recordfile where "
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
	public java.util.List findByExample(com.liveneo.plat.hibernate.dao.Recordfile recordfile) {
  		return getHibernateTemplate().findByExample(recordfile);
    }
    public java.util.List findByHql(String hql){
			return  getHibernateTemplate().find(hql);
	}
	public	com.liveneo.plat.hibernate.dao.Recordfile getByUniqueIndex(
			final DetachedCriteria detachedCriteria) {
		com.liveneo.plat.hibernate.dao.Recordfile object = (com.liveneo.plat.hibernate.dao.Recordfile) getHibernateTemplate()
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

	public com.liveneo.plat.hibernate.dao.Recordfile getByUniqueIndex(
			String colname, Object colvalue) {
		DetachedCriteria detachedCriteria = DetachedCriteria
				.forClass(com.liveneo.plat.hibernate.dao.Recordfile.class);
		detachedCriteria.add(Restrictions.eq(colname, colvalue));
		return this.getByUniqueIndex(detachedCriteria);
	}

	public List<Object> getCountIPCCRecListBySQl(String sql,
			String type) throws SQLException {

		java.sql.Connection con = null;
		java.sql.Statement stm = null;
		try {

			con = this.getSession().connection();
			con.setAutoCommit(false);
			stm = con.createStatement();
			List<Object> recList = new ArrayList<Object>();
			ResultSet rs = stm.executeQuery(sql);
			while(rs.next()){
				IpccRecordForm ipccRecForm  = new IpccRecordForm();
				ipccRecForm.setCtotal(rs.getString("ctotal"));
				recList.add(ipccRecForm);
			}
			return recList; 
		} catch (Exception ex) {
			System.out.println("从IPCC平台获取录音失败!" + ex);
			con.rollback();
		} finally {
			try {
				if (stm != null)
					stm.close();
				if (con != null)
					con.close();
			} catch (SQLException fe) {
				System.out.println("关闭IPCC获取录音链接失败!" + fe);

			}
		}
		return null;
	}

	//录音查询
	public List<Object> getIPCCRecListBySQl(String sql,
			String type) throws SQLException {

		java.sql.Connection con = null;
		java.sql.Statement stm = null;
		try {

			con = this.getSession().connection();
			con.setAutoCommit(false);
			stm = con.createStatement();
			List<Object> recList = new ArrayList<Object>();
			ResultSet rs = stm.executeQuery(sql);
			while(rs.next()){
				IpccRecordForm ipccRecForm  = new IpccRecordForm();
				ipccRecForm.setAgentLoginID(rs.getString("agentLoginID"));
				ipccRecForm.setDeviceDN(rs.getString("devicedn"));
				ipccRecForm.setDeviceType(rs.getString("deviceType"));
				ipccRecForm.setFileName(rs.getString("filename"));
				ipccRecForm.setOriANI(rs.getString("oriani"));
				ipccRecForm.setOridnis(rs.getString("oridnis"));
				ipccRecForm.setStartTime(rs.getString("startTime"));
				ipccRecForm.setCallDirection(rs.getString("calldirection"));
				SimpleDateFormat date_format = new SimpleDateFormat ("mm:ss");
				ipccRecForm.setTimeLength(date_format.format(new Date(IntegerUtil.converStrToInteger(rs.getString("timeLength")))));
				ipccRecForm.setContactid(rs.getString("contactid"));
				ipccRecForm.setUploadadress(rs.getString("uploadadress"));
//				ipccRecForm.setHandleflag(rs.getString("handleflag"));
				recList.add(ipccRecForm);
			}
			return recList; 
		} catch (Exception ex) {
			System.out.println("从IPCC平台获取录音失败!" + ex);
			con.rollback();
		} finally {
			try {
				if (stm != null)
					stm.close();
				if (con != null)
					con.close();
			} catch (SQLException fe) {
				System.out.println("关闭IPCC获取录音链接失败!" + fe);

			}
		}
		return null;
	}
	
	
}