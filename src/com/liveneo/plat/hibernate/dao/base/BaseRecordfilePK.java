package com.liveneo.plat.hibernate.dao.base;

import java.io.Serializable;


public abstract class BaseRecordfilePK implements Serializable {

	protected int hashCode = Integer.MIN_VALUE;

	private java.lang.String contactID;
	private java.lang.String startTime;
	private java.lang.String deviceDN;


	public BaseRecordfilePK () {}
	
	public BaseRecordfilePK (
		java.lang.String contactID,
		java.lang.String startTime,
		java.lang.String deviceDN) {

		this.setContactID(contactID);
		this.setStartTime(startTime);
		this.setDeviceDN(deviceDN);
	}


	/**
	 * Return the value associated with the column: ContactID
	 */
	public java.lang.String getContactID () {
		return contactID;
	}

	/**
	 * Set the value related to the column: ContactID
	 * @param contactID the ContactID value
	 */
	public void setContactID (java.lang.String contactID) {
		this.contactID = contactID;
	}



	/**
	 * Return the value associated with the column: StartTime
	 */
	public java.lang.String getStartTime () {
		return startTime;
	}

	/**
	 * Set the value related to the column: StartTime
	 * @param startTime the StartTime value
	 */
	public void setStartTime (java.lang.String startTime) {
		this.startTime = startTime;
	}



	/**
	 * Return the value associated with the column: DeviceDN
	 */
	public java.lang.String getDeviceDN () {
		return deviceDN;
	}

	/**
	 * Set the value related to the column: DeviceDN
	 * @param deviceDN the DeviceDN value
	 */
	public void setDeviceDN (java.lang.String deviceDN) {
		this.deviceDN = deviceDN;
	}




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.liveneo.plat.hibernate.dao.RecordfilePK)) return false;
		else {
			com.liveneo.plat.hibernate.dao.RecordfilePK mObj = (com.liveneo.plat.hibernate.dao.RecordfilePK) obj;
			if (null != this.getContactID() && null != mObj.getContactID()) {
				if (!this.getContactID().equals(mObj.getContactID())) {
					return false;
				}
			}
			else {
				return false;
			}
			if (null != this.getStartTime() && null != mObj.getStartTime()) {
				if (!this.getStartTime().equals(mObj.getStartTime())) {
					return false;
				}
			}
			else {
				return false;
			}
			if (null != this.getDeviceDN() && null != mObj.getDeviceDN()) {
				if (!this.getDeviceDN().equals(mObj.getDeviceDN())) {
					return false;
				}
			}
			else {
				return false;
			}
			return true;
		}
	}

	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			StringBuilder sb = new StringBuilder();
			if (null != this.getContactID()) {
				sb.append(this.getContactID().hashCode());
				sb.append(":");
			}
			else {
				return super.hashCode();
			}
			if (null != this.getStartTime()) {
				sb.append(this.getStartTime().hashCode());
				sb.append(":");
			}
			else {
				return super.hashCode();
			}
			if (null != this.getDeviceDN()) {
				sb.append(this.getDeviceDN().hashCode());
				sb.append(":");
			}
			else {
				return super.hashCode();
			}
			this.hashCode = sb.toString().hashCode();
		}
		return this.hashCode;
	}


}