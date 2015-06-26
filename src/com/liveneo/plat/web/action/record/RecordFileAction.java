package com.liveneo.plat.web.action.record;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.util.DateParseException;
import org.apache.commons.httpclient.util.DateUtil;
import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.liveneo.plat.hibernate.dao.Recordfile;
import com.liveneo.plat.service.impl.RecordFileService;
import com.liveneo.plat.utils.IntegerUtil;
import com.liveneo.plat.web.action.base.AbstractActionSupport;
import com.liveneo.plat.web.form.record.IpccRecordForm;

public class RecordFileAction extends AbstractActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private RecordFileService recordFileService;
	public IpccRecordForm getIpccRecForm() {
		return ipccRecForm;
	}

	public void setIpccRecForm(IpccRecordForm ipccRecForm) {
		this.ipccRecForm = ipccRecForm;
	}
	private IpccRecordForm ipccRecForm;
	public void setRecordFileService(RecordFileService recordFileService) {
		this.recordFileService = recordFileService;
	}
	private String queryAgentID;
	private String queryExtentionNO;
	private String queryAni;
	private String queryDnis;
	private String queryTimeBegain;
	private String queryTimeEnd;
	private String queryCalldirection;

	private String queryst;
	private String queryusername;
	
	// 录音文件路径
	private String url;
	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getQueryAgentID() {
		return queryAgentID;
	}

	public void setQueryAgentID(String queryAgentID) {
		this.queryAgentID = queryAgentID;
	}

	public String getQueryExtentionNO() {
		return queryExtentionNO;
	}

	public void setQueryExtentionNO(String queryExtentionNO) {
		this.queryExtentionNO = queryExtentionNO;
	}

	public String getQueryAni() {
		return queryAni;
	}

	public void setQueryAni(String queryAni) {
		this.queryAni = queryAni;
	}

	public String getQueryDnis() {
		return queryDnis;
	}

	public void setQueryDnis(String queryDnis) {
		this.queryDnis = queryDnis;
	}

	public String getQueryTimeBegain() {
		return queryTimeBegain;
	}

	public void setQueryTimeBegain(String queryTimeBegain) {
		this.queryTimeBegain = queryTimeBegain;
	}

	public String getQueryTimeEnd() {
		return queryTimeEnd;
	}

	public void setQueryTimeEnd(String queryTimeEnd) {
		this.queryTimeEnd = queryTimeEnd;
	}

	public String getQueryCalldirection() {
		return queryCalldirection;
	}

	public void setQueryCalldirection(String queryCalldirection) {
		this.queryCalldirection = queryCalldirection;
	}

	public String getQueryst() {
		return queryst;
	}

	public void setQueryst(String queryst) {
		this.queryst = queryst;
	}

	public String getQueryusername() {
		return queryusername;
	}

	public void setQueryusername(String queryusername) {
		this.queryusername = queryusername;
	}

	public RecordFileService getRecordFileService() {
		return recordFileService;
	}

	public String listIpccRecord()throws DateParseException{
		int pageNum = IntegerUtil.converStrToInteger(this.getPageNum()) > 0 ? IntegerUtil
				.converStrToInteger(this.getPageNum()) - 1
				: 0;
		int numPerPage = IntegerUtil.converStrToInteger(getNumPerPage());
		int startIndex = pageNum
				* IntegerUtil.converStrToInteger(getNumPerPage());
		String search = this.getRequest().getParameter("search");
		if (StringUtils.equalsIgnoreCase(search, "true")) {
			startIndex = 0 * IntegerUtil.converStrToInteger(getNumPerPage());
		}
		String check_changeUrl = this.getRequest().getParameter("changeUrl");
//		System.out.println("************************"+check_changeUrl);
		if (StringUtils.isNotEmpty(check_changeUrl)) {
			this.setQueryAgentID("");
			this.setQueryAni("");
			this.setQueryDnis("");
			this.setQueryExtentionNO("");
			this.setQueryTimeBegain("");
			this.setQueryTimeEnd("");
			this.setQueryst("");
			this.setQueryusername("");
			this.setQueryCalldirection("");
		}
//		HttpServletRequest request = ServletActionContext.getRequest();
//		String queryAgentID = request.getParameter("queryAgentID");
//		String queryExtentionNO = request.getParameter("queryExtentionNO");
//		String queryAni = request.getParameter("queryAni");
//		String queryDnis = request.getParameter("queryDnis");
//		String queryTimeBegain = request.getParameter("queryTimeBegain");
//		String queryTimeEnd = request.getParameter("queryTimeEnd");
//		String queryusername = request.getParameter("queryusername");
//		String queryCalldirection = request.getParameter("queryCalldirection");
//		List<IpccRecordForm> recordList = recordFileService.findAll();
//		ServletActionContext.getRequest().setAttribute("recordList", recordList);
//		return SUCCESS;
		try {
			int i = 0;
			List l;
			l = this.recordFileService.getCallRecordInfo(this.getSql(startIndex,
					numPerPage));
			this.getSession().setAttribute("recordList", l);
			List<IpccRecordForm> ls = new ArrayList<IpccRecordForm>();
			ls = this.recordFileService.getCountRecord(this.getSqlAll());
			if (ls.size() > 0) {
				i = IntegerUtil.converStrToInteger(ls.get(0).getCtotal());
			}
			this.setTotalCount(i);
			this.getSession().setAttribute("totalCount", i);
			if (StringUtils.isNotEmpty(url)) {
				this.getRequest().setAttribute("url", url);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return AbstractActionSupport.LIST;
	}
	
	private String getSql(int startIndex, int numPerPage) {
		StringBuffer sb = new StringBuffer();
		sb.append("select * from recordfile  where agentLoginID IS NOT null");
		if (StringUtils.isNotEmpty(queryAgentID)) {
			sb.append(" and agentLoginID like '%" + queryAgentID + "%'");
		}
		if (StringUtils.isNotEmpty(queryExtentionNO)) {
			sb.append(" and DeviceDN like '%" + queryExtentionNO + "%'");
		}
		if (StringUtils.isNotEmpty(queryAni)) {
			sb.append(" and OriANI like '%" + queryAni + "%'");
		}
		if (StringUtils.isNotEmpty(queryDnis)) {
			sb.append(" and OriDNIS like '%" + queryDnis + "%'");
		}
		if (StringUtils.isNotEmpty(queryTimeBegain)) {
			sb.append(" and StartTime >= '" + queryTimeBegain + "'");
		}
		if (StringUtils.isNotEmpty(queryTimeEnd)) {
			sb.append(" and StartTime <= '" + queryTimeEnd + "'");
		}
		if (StringUtils.isNotEmpty(queryCalldirection)) {
			sb.append(" and CallDirection = '" + queryCalldirection + "'");
		}
		sb.append(" ORDER BY STARTTIME asc LIMIT " + startIndex + "," + numPerPage);
		System.out.println(sb.toString());
		return sb.toString();
	}

	private String getSqlAll() {
		StringBuffer sb = new StringBuffer();
		sb.append("SELECT count(*) ctotal "
				+ "from recordfile");
		if (StringUtils.isNotEmpty(queryAgentID)) {
			sb.append(" and AgentLoginID like '%" + queryAgentID + "%'");
		}
		if (StringUtils.isNotEmpty(queryExtentionNO)) {
			sb.append(" and DeviceDN like '%" + queryExtentionNO + "%'");
		}
		if (StringUtils.isNotEmpty(queryAni)) {
			sb.append(" and OriANI like '%" + queryAni + "%'");
		}
		if (StringUtils.isNotEmpty(queryDnis)) {
			sb.append(" and OriDNIS like '%" + queryDnis + "%'");
		}
		if (StringUtils.isNotEmpty(queryTimeBegain)) {
			sb.append(" and StartTime >= '" + queryTimeBegain + "'");
		}
		if (StringUtils.isNotEmpty(queryTimeEnd)) {
			sb.append(" and StartTime <= '" + queryTimeEnd + "'");
		}
		if (StringUtils.isNotEmpty(queryCalldirection)) {
			sb.append(" and CallDirection = '" + queryCalldirection + "'");
		}
		return sb.toString();
	}
}
