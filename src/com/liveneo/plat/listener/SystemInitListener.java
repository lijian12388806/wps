package com.liveneo.plat.listener;

import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.liveneo.plat.constants.ConstantRegister;
import com.liveneo.plat.constants.GlobalConstants;
import com.liveneo.plat.service.iface.BdDictServiceIface;
import com.liveneo.plat.web.action.base.AbstractActionSupport;


public class SystemInitListener implements ServletContextListener {
	protected transient final Log log = LogFactory.getLog(getClass());

	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub
		event.getServletContext().removeAttribute(
				GlobalConstants.SYSTEM_PARAMETER_INFO);
		event.getServletContext().removeAttribute(
				GlobalConstants.DICT_PARAMETER_INFO);
	}

	public void contextInitialized(ServletContextEvent event) {
		// TODO Auto-generated method stub
		ServletContext application = event.getServletContext();
		this.setSystemParameterToApplication(application);
	}

	/**
	 * @param application
	 *            
	 */
	private void setSystemParameterToApplication(ServletContext application) {
		// 系统参数
		setSysPara(application);
		setDictPara(application);
		return;
	}

	private void setSysPara(ServletContext application) {
		try {
			application.setAttribute(GlobalConstants.SYSTEM_PARAMETER_INFO,
					ConstantRegister.paraListRegister());

		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void setDictPara(ServletContext application) {
		try {
			BdDictServiceIface bdDictServcice = (BdDictServiceIface) AbstractActionSupport
					.getService(application, GlobalConstants.SERVICENAME_DICT);
			if (bdDictServcice == null) {
				log.fatal("Initialization For DictPara is Failed!!!");
			}
			application.setAttribute(GlobalConstants.DICT_PARAMETER_INFO,
					bdDictServcice.registerBdDictPara());
			Timer timer = new Timer();
			timer.schedule(new ReSetTimer(application, bdDictServcice), 0,
					1000 * 1 * 30);

		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	class ReSetTimer extends TimerTask {
		ServletContext application;

		Object service;

		ReSetTimer(ServletContext a, Object b) {
			application = a;
			service = b;
		}

		@Override
		public void run() {
			if (service instanceof BdDictServiceIface) {
				application.setAttribute(GlobalConstants.DICT_PARAMETER_INFO,
						((BdDictServiceIface) service).registerBdDictPara());
			}
		}

	}

}
