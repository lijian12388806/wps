package com.liveneo.plat.hibernate.dao;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.liveneo.plat.hibernate.dao.base.BaseCusphonelist;



public class Cusphonelist extends BaseCusphonelist {
	private static final long serialVersionUID = 1L;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Cusphonelist () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Cusphonelist (java.lang.Integer id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public Cusphonelist (
		java.lang.Integer id,
		com.liveneo.plat.hibernate.dao.Customerinfo pkCustomerinfo,
		java.util.Date updatetime) {

		super (
			id,
			pkCustomerinfo,
			updatetime);
	}

/*[CONSTRUCTOR MARKER END]*/

	@SuppressWarnings("static-access")
	public String toString() {
		return new ToStringBuilder(this)
					.append(this.PROP_ID,this.getId())
					.append(this.PROP_CUSTLINKNAME,this.getCustlinkname())
					.append(this.PROP_NOLEVEL,this.getNolevel())
					.append(this.PROP_PHONENO,this.getPhoneno())
					.append(this.PROP_REMARK,this.getRemark())
					.append(this.PROP_SYNSTATUS,this.getSynstatus())
					.append(this.PROP_TEMP1,this.getTemp1())
					.append(this.PROP_TEMP2,this.getTemp2())
					.append(this.PROP_TEMP3,this.getTemp3())
					.append(this.PROP_TEMP4,this.getTemp4())
					.append(this.PROP_UPDATETIME,this.getUpdatetime())
				 .toString();
	}
}