package com.liveneo.plat.hibernate.dao;

import org.apache.commons.lang.builder.ToStringBuilder;
import com.liveneo.plat.hibernate.dao.base.BaseRecordfile;



public class Recordfile extends BaseRecordfile {
	private static final long serialVersionUID = 1L;
	private java.lang.String ctotal;
	
public java.lang.String getCtotal() {
		return ctotal;
	}

	public void setCtotal(java.lang.String ctotal) {
		this.ctotal = ctotal;
	}

	/*[CONSTRUCTOR MARKER BEGIN]*/
	public Recordfile () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Recordfile (com.liveneo.plat.hibernate.dao.RecordfilePK id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public Recordfile (
		com.liveneo.plat.hibernate.dao.RecordfilePK id,
		java.lang.String oriANI,
		java.lang.String fileName) {

		super (
			id,
			oriANI,
			fileName);
	}

/*[CONSTRUCTOR MARKER END]*/

	@SuppressWarnings("static-access")
	public String toString() {
		return new ToStringBuilder(this)
					.append(this.PROP_ID,this.getId())
					.append(this.PROP_AGENT_LOGIN_I_D,this.getAgentLoginID())
					.append(this.PROP_DEVICE_TYPE,this.getDeviceType())
					.append(this.PROP_CALL_DIRECTION,this.getCallDirection())
					.append(this.PROP_CALL_TYPE,this.getCallType())
					.append(this.PROP_ORI_A_N_I,this.getOriANI())
					.append(this.PROP_ORI_D_N_I_S,this.getOriDNIS())
					.append(this.PROP_TIME_LENGTH,this.getTimeLength())
					.append(this.PROP_FILE_NAME,this.getFileName())
					.append(this.PROP_CALL_I_D,this.getCallID())
					.append(this.PROP_OLD_CALL_I_D,this.getOldCallID())
					.append(this.PROP_SEC_OLD_CALL_I_D,this.getSecOldCallID())
					.append(this.PROP_CALLING_PARTY,this.getCallingParty())
					.append(this.PROP_CALLED_PARTY,this.getCalledParty())
					.append(this.PROP_OTHER_PARTY,this.getOtherParty())
					.append(this.PROP_THIRD_PARTY,this.getThirdParty())
					.append(this.PROP_USER_FIELD,this.getUserField())
					.append(this.PROP_UPLOADADRESS,this.getUploadadress())
				 .toString();
	}
}