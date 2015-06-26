package com.liveneo.plat.hibernate.dao.base;

import java.io.Serializable;



/**
 * This is an object that contains data related to the recordfile table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="recordfile"
 */

public abstract class BaseRecordfile  implements Serializable {

	public static String REF = "Recordfile";
	public static String PROP_SEC_OLD_CALL_I_D = "SecOldCallID";
	public static String PROP_USER_FIELD = "UserField";
	public static String PROP_AGENT_LOGIN_I_D = "AgentLoginID";
	public static String PROP_CALL_DIRECTION = "CallDirection";
	public static String PROP_UPLOADADRESS = "Uploadadress";
	public static String PROP_CALL_TYPE = "CallType";
	public static String PROP_THIRD_PARTY = "ThirdParty";
	public static String PROP_OLD_CALL_I_D = "OldCallID";
	public static String PROP_DEVICE_TYPE = "DeviceType";
	public static String PROP_CALLED_PARTY = "CalledParty";
	public static String PROP_ORI_A_N_I = "OriANI";
	public static String PROP_OTHER_PARTY = "OtherParty";
	public static String PROP_TIME_LENGTH = "TimeLength";
	public static String PROP_FILE_NAME = "FileName";
	public static String PROP_ID = "Id";
	public static String PROP_ORI_D_N_I_S = "OriDNIS";
	public static String PROP_CALL_I_D = "CallID";
	public static String PROP_CALLING_PARTY = "CallingParty";


	// constructors
	public BaseRecordfile () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseRecordfile (com.liveneo.plat.hibernate.dao.RecordfilePK id) {
		this.setId(id);
		initialize();
	}

	/**
	 * Constructor for required fields
	 */
	public BaseRecordfile (
		com.liveneo.plat.hibernate.dao.RecordfilePK id,
		java.lang.String oriANI,
		java.lang.String fileName) {

		this.setId(id);
		this.setOriANI(oriANI);
		this.setFileName(fileName);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private com.liveneo.plat.hibernate.dao.RecordfilePK id;

	// fields
	private java.lang.String agentLoginID;
	private java.math.BigDecimal deviceType;
	private java.math.BigDecimal callDirection;
	private java.math.BigDecimal callType;
	private java.lang.String oriANI;
	private java.lang.String oriDNIS;
	private java.math.BigDecimal timeLength;
	private java.lang.String fileName;
	private java.math.BigDecimal callID;
	private java.math.BigDecimal oldCallID;
	private java.math.BigDecimal secOldCallID;
	private java.lang.String callingParty;
	private java.lang.String calledParty;
	private java.lang.String otherParty;
	private java.lang.String thirdParty;
	private java.lang.String userField;
	private java.lang.String uploadadress;
	
	

	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     */
	public com.liveneo.plat.hibernate.dao.RecordfilePK getId () {
		return id;
	}

	/**
	 * Set the unique identifier of this class
	 * @param id the new ID
	 */
	public void setId (com.liveneo.plat.hibernate.dao.RecordfilePK id) {
		this.id = id;
		this.hashCode = Integer.MIN_VALUE;
	}




	/**
	 * Return the value associated with the column: AgentLoginID
	 */
	public java.lang.String getAgentLoginID () {
		return agentLoginID;
	}

	/**
	 * Set the value related to the column: AgentLoginID
	 * @param agentLoginID the AgentLoginID value
	 */
	public void setAgentLoginID (java.lang.String agentLoginID) {
		this.agentLoginID = agentLoginID;
	}



	/**
	 * Return the value associated with the column: DeviceType
	 */
	public java.math.BigDecimal getDeviceType () {
		return deviceType;
	}

	/**
	 * Set the value related to the column: DeviceType
	 * @param deviceType the DeviceType value
	 */
	public void setDeviceType (java.math.BigDecimal deviceType) {
		this.deviceType = deviceType;
	}



	/**
	 * Return the value associated with the column: CallDirection
	 */
	public java.math.BigDecimal getCallDirection () {
		return callDirection;
	}

	/**
	 * Set the value related to the column: CallDirection
	 * @param callDirection the CallDirection value
	 */
	public void setCallDirection (java.math.BigDecimal callDirection) {
		this.callDirection = callDirection;
	}



	/**
	 * Return the value associated with the column: CallType
	 */
	public java.math.BigDecimal getCallType () {
		return callType;
	}

	/**
	 * Set the value related to the column: CallType
	 * @param callType the CallType value
	 */
	public void setCallType (java.math.BigDecimal callType) {
		this.callType = callType;
	}



	/**
	 * Return the value associated with the column: OriANI
	 */
	public java.lang.String getOriANI () {
		return oriANI;
	}

	/**
	 * Set the value related to the column: OriANI
	 * @param oriANI the OriANI value
	 */
	public void setOriANI (java.lang.String oriANI) {
		this.oriANI = oriANI;
	}



	/**
	 * Return the value associated with the column: OriDNIS
	 */
	public java.lang.String getOriDNIS () {
		return oriDNIS;
	}

	/**
	 * Set the value related to the column: OriDNIS
	 * @param oriDNIS the OriDNIS value
	 */
	public void setOriDNIS (java.lang.String oriDNIS) {
		this.oriDNIS = oriDNIS;
	}



	/**
	 * Return the value associated with the column: TimeLength
	 */
	public java.math.BigDecimal getTimeLength () {
		return timeLength;
	}

	/**
	 * Set the value related to the column: TimeLength
	 * @param timeLength the TimeLength value
	 */
	public void setTimeLength (java.math.BigDecimal timeLength) {
		this.timeLength = timeLength;
	}



	/**
	 * Return the value associated with the column: FileName
	 */
	public java.lang.String getFileName () {
		return fileName;
	}

	/**
	 * Set the value related to the column: FileName
	 * @param fileName the FileName value
	 */
	public void setFileName (java.lang.String fileName) {
		this.fileName = fileName;
	}



	/**
	 * Return the value associated with the column: CallID
	 */
	public java.math.BigDecimal getCallID () {
		return callID;
	}

	/**
	 * Set the value related to the column: CallID
	 * @param callID the CallID value
	 */
	public void setCallID (java.math.BigDecimal callID) {
		this.callID = callID;
	}



	/**
	 * Return the value associated with the column: OldCallID
	 */
	public java.math.BigDecimal getOldCallID () {
		return oldCallID;
	}

	/**
	 * Set the value related to the column: OldCallID
	 * @param oldCallID the OldCallID value
	 */
	public void setOldCallID (java.math.BigDecimal oldCallID) {
		this.oldCallID = oldCallID;
	}



	/**
	 * Return the value associated with the column: SecOldCallID
	 */
	public java.math.BigDecimal getSecOldCallID () {
		return secOldCallID;
	}

	/**
	 * Set the value related to the column: SecOldCallID
	 * @param secOldCallID the SecOldCallID value
	 */
	public void setSecOldCallID (java.math.BigDecimal secOldCallID) {
		this.secOldCallID = secOldCallID;
	}



	/**
	 * Return the value associated with the column: CallingParty
	 */
	public java.lang.String getCallingParty () {
		return callingParty;
	}

	/**
	 * Set the value related to the column: CallingParty
	 * @param callingParty the CallingParty value
	 */
	public void setCallingParty (java.lang.String callingParty) {
		this.callingParty = callingParty;
	}



	/**
	 * Return the value associated with the column: CalledParty
	 */
	public java.lang.String getCalledParty () {
		return calledParty;
	}

	/**
	 * Set the value related to the column: CalledParty
	 * @param calledParty the CalledParty value
	 */
	public void setCalledParty (java.lang.String calledParty) {
		this.calledParty = calledParty;
	}



	/**
	 * Return the value associated with the column: OtherParty
	 */
	public java.lang.String getOtherParty () {
		return otherParty;
	}

	/**
	 * Set the value related to the column: OtherParty
	 * @param otherParty the OtherParty value
	 */
	public void setOtherParty (java.lang.String otherParty) {
		this.otherParty = otherParty;
	}



	/**
	 * Return the value associated with the column: ThirdParty
	 */
	public java.lang.String getThirdParty () {
		return thirdParty;
	}

	/**
	 * Set the value related to the column: ThirdParty
	 * @param thirdParty the ThirdParty value
	 */
	public void setThirdParty (java.lang.String thirdParty) {
		this.thirdParty = thirdParty;
	}



	/**
	 * Return the value associated with the column: UserField
	 */
	public java.lang.String getUserField () {
		return userField;
	}

	/**
	 * Set the value related to the column: UserField
	 * @param userField the UserField value
	 */
	public void setUserField (java.lang.String userField) {
		this.userField = userField;
	}



	/**
	 * Return the value associated with the column: uploadadress
	 */
	public java.lang.String getUploadadress () {
		return uploadadress;
	}

	/**
	 * Set the value related to the column: uploadadress
	 * @param uploadadress the uploadadress value
	 */
	public void setUploadadress (java.lang.String uploadadress) {
		this.uploadadress = uploadadress;
	}




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.liveneo.plat.hibernate.dao.Recordfile)) return false;
		else {
			com.liveneo.plat.hibernate.dao.Recordfile recordfile = (com.liveneo.plat.hibernate.dao.Recordfile) obj;
			if (null == this.getId() || null == recordfile.getId()) return false;
			else return (this.getId().equals(recordfile.getId()));
		}
	}

	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	 public String toString () {
		return super.toString();
	}



}