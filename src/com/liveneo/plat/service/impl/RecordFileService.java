package com.liveneo.plat.service.impl;

import java.sql.SQLException;
import java.util.List;
import com.liveneo.plat.hibernate.dao.dao.RecordfileDAO;
import com.liveneo.plat.service.base.AbstractBaseService;
import com.liveneo.plat.service.iface.RecordFileServiceIface;

public class RecordFileService extends AbstractBaseService implements RecordFileServiceIface{
	
	private RecordfileDAO recordfileDAO;
	
	
	public List getCallRecordInfo(String sql) throws SQLException {
		return this.recordfileDAO.getIPCCRecListBySQl(sql, "");
	}
	public List getCountRecord(String sql) throws SQLException {
		return this.recordfileDAO.getCountIPCCRecListBySQl(sql, "");
	}
	public void setRecordfileDAO(RecordfileDAO recordfileDAO) {
		this.recordfileDAO = recordfileDAO;
	}


	public List findAll() {
		// TODO Auto-generated method stub
		return recordfileDAO.findAll();
	}
	

}
