package com.liveneo.plat.hibernate.dao;

import com.liveneo.plat.hibernate.dao.base.BaseRecordfilePK;

public class RecordfilePK extends BaseRecordfilePK {
	private static final long serialVersionUID = 1L;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public RecordfilePK () {}
	
	public RecordfilePK (
		java.lang.String contactID,
		java.lang.String startTime,
		java.lang.String deviceDN) {

		super (
			contactID,
			startTime,
			deviceDN);
	}
/*[CONSTRUCTOR MARKER END]*/


}