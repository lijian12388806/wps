package com.liveneo.plat.web.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.liveneo.lm.utils.Base64Encode;
import com.liveneo.plat.hibernate.dao.Authority;
import com.liveneo.plat.hibernate.dao.BdRole;
import com.liveneo.plat.hibernate.dao.BdRolemenu;
import com.liveneo.plat.hibernate.dao.BdUserinforole;
import com.liveneo.plat.hibernate.dao.Menuinfo;
import com.liveneo.plat.hibernate.dao.Userinfo;
import com.liveneo.plat.hibernate.dao.Workorder;
import com.liveneo.plat.hibernate.dao.dao.BdRoleDAO;
import com.liveneo.plat.service.impl.MenuinfoService;
import com.liveneo.plat.service.impl.RoleService;
import com.liveneo.plat.service.impl.UserinfoService;
import com.liveneo.plat.service.impl.WorkOrderService;
import com.liveneo.plat.utils.DateUtil;
import com.liveneo.plat.web.action.base.AbstractActionSupport;
import com.liveneo.plat.web.form.SubtotalsForm;
import com.liveneo.plat.web.form.UserinfoForm;

public class LoginAction extends AbstractActionSupport {

	private static final long serialVersionUID = 1L;
	private UserinfoForm userinfoForm;
	private SubtotalsForm subtotalsForm;
	private Userinfo userinfo;
	private UserinfoService userinfoService;
	private MenuinfoService menuinfoService;
	private WorkOrderService workOrderService;
	private RoleService roleService;
	private String withoutAuthentication;

	public void setWithoutAuthentication(String withoutAuthentication) {
		this.withoutAuthentication = withoutAuthentication;
	}

	public String execute() {
		return SUCCESS;
	}

	public String login() {
		if(null != userinfoForm){
		}else{
			return "failed";
		}
//		this.getSession().invalidate();
		String msg = "";
		String longinname = userinfoForm.getUsername();
		String password = userinfoForm.getUserpwd();
		String ctiaddr = userinfoForm.getCtiaddr();
		if (null == userinfoForm) {
			msg = "login.inputUserAndPwd";
			this.getRequest().setAttribute("msg", msg);
			log.info("empty");
			return "failed";
		}
		if (StringUtils.isEmpty(longinname)) {
			msg = getText("login.userNotEmpty");
			this.getRequest().setAttribute("msg", msg);
			log.info("username empty");
			return "failed";
		}
		if (StringUtils.isEmpty(password)) {
			msg = getText("login.pwdNotEmpty");
			this.getRequest().setAttribute("msg", msg);
			log.info("password empty");
			return "failed";
		}
		Userinfo userinfoResult = new Userinfo();
		userinfoResult = this.userinfoService.queryuserinfoIndex(
				Userinfo.PROP_USERNAME, longinname);
		if (userinfoResult == null) {
			msg = getText("login.nouser");
			this.getRequest().setAttribute("msg", msg);
			log.info("NO USER");
			return "failed";
		}
		if (!StringUtils.equals(userinfoResult.getUserstatus(), "Y")) {
			msg = getText("该用户不可用！");
			this.getRequest().setAttribute("msg", msg);
			log.info("USER DISABLE");
			return "failed";
		}
		Base64Encode base64 = new Base64Encode();
		if (!StringUtils.equals(base64.encode(password), userinfoResult
				.getUserpwd())) {
			msg = getText("login.pwderror");
			this.getRequest().setAttribute("msg", msg);
			log.info("password error");
			return "failed";
		}
		userinfo = userinfoResult;
		//User  info
		this.getSession().setAttribute("userinfo", userinfo);
		//User role
		String role = createHtmlRole(userinfo);
		//menu info
		String str = this.createHtmlMenu(userinfo);
		System.out.println("********************>>>>>"+str);
		this.getSession().setAttribute("menu", str);
		// 首页统计数据
		this.listWorkorder(userinfo);
		this.getSubtotals();
		//软dianhua参数
		this.getSession().setAttribute("workNo", userinfo.getAgentno());
		this.getSession().setAttribute("ipaddr", userinfo.getCtiaddr());
		this.getSession().setAttribute("exten", userinfo.getExtno());
		this.getSession().setAttribute("skill", userinfo.getTemp2());
		
		
		
//		// 初始化userInfo
//		UserInfo userInfo = new UserInfo();
//		userInfo.setUser(userinfo);
//		userInfo.setUserid(userinfo.getId().toString());
//		userInfo.setUsername(userinfo.getUsername());
//		// 在线用户处理
//		HttpServletRequest request= this.getRequest();
//		HttpServletResponse response= this.getResponse();
//		HttpSession session = this.getSession();
//		Iterator iter = OnlineListListener.getList().values().iterator();
//		String info = "";
//		String contextPath = "";
//		String href = "";
//		String route = "";
//		while (iter.hasNext()) {
//			// 如果是管理员则不限制
//			if (userInfo.getUser().getIsadmin().equalsIgnoreCase("true")) {
//				break;
//			}
//			OnlineModel om = (OnlineModel) (iter.next());
//			// 控制不能重复登录
//			if ((userInfo.getUserid()).equals(((Integer) om.getUserId())
//					.toString())) {
//				info += "用户:" + om.getUserName() + "已在 " + om.getIpAddress()
//						+ " 登陆，请用其它用户名登陆！" + "\\n"
//						+ "如果由于掉线或错误地关闭浏览器窗口而退出，请耐心等待"
//						+ this.getSession().getMaxInactiveInterval() / 60 + "分钟之后再登陆！";
//				//request.getContextPath()返回请求的url
//				if (request.getContextPath() != null
//						|| !request.getContextPath().equals("/")) {
//					contextPath = request.getContextPath();
//				}
//				href = "http://" + request.getHeader("Host") + contextPath
//						+ "/";
//				route = href + "";
//				try {
//					response.setContentType("text/html; charset=UTF-8");
//					PrintWriter out = response.getWriter();
//					String strURL = "<script language=\"javascript\">";
//					strURL += "alert('" + info + "');window.open('" + route
//							+ "','_parent')";
//					strURL += "</script>";
//					out.println(strURL);
//					return null;
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//
//			}
//			if (this.getIpAddr(request).equals(om.getIpAddress())) {
//				info += "IP相同，请不要使用多账户登陆！";
//				if (request.getContextPath() != null
//						|| !request.getContextPath().equals("/")) {
//					contextPath = request.getContextPath();
//				}
//				href = "http://" + request.getHeader("Host") + contextPath
//						+ "/";
//				route = href + "";
//				try {
//					response.setContentType("text/html; charset=UTF-8");
//					PrintWriter out = response.getWriter();
//					String strURL = "<script language=\"javascript\">";
//					strURL += "alert('" + info + "');window.open('" + route
//							+ "','_parent')";
//					strURL += "</script>";
//					out.println(strURL);
//					return null;
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//
//		}
//		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(
//				"yyyy年MM月dd日HH:mm:ss");
//		String time = sdf.format(java.util.Calendar.getInstance().getTime());
//		session.setAttribute("online", new OnlineModel(userInfo.getUser()
//				.getId(), userInfo.getUser().getUsername(), this
//				.getIpAddr(request), time, 0, session.getId()));
		this.logService(getRequest()).addLog(this.getRequest(), "LOGTYPE-DL",
				"login", Userinfo.REF);
		return SUCCESS;
	}
	//ip address
	private String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}
	// 首页统计数据
	private void listWorkorder(Userinfo user) {
		List<Workorder> l = this.workOrderService
				.queryWoByDetachedCriteria(this.getDetachedCriteria(user));
		this.getSession().setAttribute("workorderIndexList", l);
	}

	private DetachedCriteria getDetachedCriteria(Userinfo user) {
		DetachedCriteria detachedCriteria = DetachedCriteria
				.forClass(Workorder.class);
//		detachedCriteria.add(Restrictions.or(Restrictions.eq(
//				Workorder.PROP_WOSTATUS, "wcl"), Restrictions.or(Restrictions
//				.eq(Workorder.PROP_WOSTATUS, "dhxcl"), Restrictions.eq(
//				Workorder.PROP_WOSTATUS, "ywc"))));
		detachedCriteria.add(Restrictions.or(Restrictions.eq(
				Workorder.PROP_WOSTATUS, "dhxcl"), Restrictions.eq(
				Workorder.PROP_WOSTATUS, "ywc")));
		if (!StringUtils.equals(user.getIsadmin(), "true")) {
			detachedCriteria.add(Restrictions.eq(Workorder.PROP_PK_USERINFO,
					user));
		}
		return detachedCriteria;
	}

	public List<Menuinfo> listUserMenu(Userinfo user) {
		Set<Menuinfo> setlist = new HashSet<Menuinfo>();
		List<Menuinfo> listmenu = new ArrayList<Menuinfo>();
		if (StringUtils.equals(user.getIsadmin(), "true")) {
			listmenu = this.menuinfoService.queryAll();
		}
		List<BdUserinforole> listUserrole = this.roleService
				.queryUserinforoleByUser(user);
		if (listUserrole.size() > 0) {
			for (BdUserinforole bur : listUserrole) {
				List<BdRolemenu> listrolemenu = this.roleService
						.queryRolemenuByRole(bur.getPkRole());
				if (listrolemenu.size() > 0) {
					for (BdRolemenu rm : listrolemenu) {
						setlist
								.add(this.menuinfoService.getlistmenu(rm)
										.get(0));
					}
				}
			}
		}
		for (Menuinfo m : setlist) {
			listmenu.add(m);
		}
		return listmenu;
	}

	public String createHtmlMenu(Userinfo user) {
		Set<Menuinfo> listsuper = new HashSet<Menuinfo>();
		List<Menuinfo> supermenu = new ArrayList<Menuinfo>();
		List<Menuinfo> allsupermenu = new ArrayList<Menuinfo>();
		List<Menuinfo> listmenu = this.listUserMenu(user);
		// System.out.println("listmenu:"+listmenu.size());
		if (StringUtils.equals(user.getIsadmin(), "true")) {
			supermenu = this.menuinfoService.querySuperMenuByCriteria();
			
		} else {
			for (Menuinfo mo : listmenu) {
				Menuinfo smeun = this.menuinfoService.queryMenuinfoById(mo
						.getSupermenu());
				listsuper.add(smeun);
			}
			for (Menuinfo l : listsuper) {
				supermenu.add(l);
			}
		}
		allsupermenu = this.menuinfoService.querySuperMenuByCriteria();
		for (Iterator it = allsupermenu.iterator(); it.hasNext();) {
			Menuinfo sm=(Menuinfo) it.next();
			if (!supermenu.contains(sm)) {
				it.remove();
			}
		}
		if(!StringUtils.equals(user.getUsername(), "superadmin")){
			for(Iterator it = allsupermenu.iterator(); it.hasNext();){
				Menuinfo sms=(Menuinfo) it.next();
				if(StringUtils.equals(sms.getMenuname(), "系统设置")){
					it.remove();
				}
			}
		}
		// System.out.println("supermenu:"+supermenu.size());
		List<Menuinfo> list = new ArrayList<Menuinfo>();
		StringBuffer str = new StringBuffer();
		str.append("<div class=\"accordionContent\">");
		str.append("<ul class=\"tree treeFolder\">");
		for (Menuinfo s : allsupermenu) {
			list = this.menuinfoService.queryMenuBySupermenu(s.getId());
			str.append("<li>");
			str.append("<a>");
			str.append(s.getMenuname());
			str.append("</a>");
			str.append("<ul>");
			for (Menuinfo m : list) {
				if (listmenu.contains(m)) {
					str.append("<li>");
					str.append("<a href=\"");
					str.append(m.getLinkaddress());
					str.append("\"");
					str.append("target=\"navTab\" rel=\"");
					str.append(m.getTemp1());
					str.append("\" reloadFlag=1>");
					str.append(m.getMenuname());
					str.append("</a>");
					str.append("</li>");
				}
			}
			str.append("</ul>");
			str.append("</li>");

		}
		str.append("</ul>");
		str.append("</div>");
		return str.toString();

	}

	private Map<String, Object> dataMap;

	public LoginAction() {
		// 初始化Map对象
		dataMap = new HashMap<String, Object>();
	}

	public String logout() {
		this.getSession().invalidate();
		try {
			this.logService(getRequest()).addLog(this.getRequest(),
					"LOGTYPE-DC", "logout", "");
		} catch (Exception e) {
			e.getMessage();
		}
		return SUCCESS;
	}

	// 分类汇总
	public void getSubtotals() {
		List<SubtotalsForm> liststf = new ArrayList<SubtotalsForm>();
		String nowyear = DateUtil.formatDateByFormat(new Date(), "yyyy");
		String nowmonth = DateUtil.formatDateByFormat(new Date(), "MM");

		// 一月
		for (int i = 1; i <= Integer.parseInt(nowmonth); i++) {
			SubtotalsForm stf = new SubtotalsForm();
			stf.setMonth(i + "月");
			stf.setOSampledepend(this.workOrderService.getCountByCriteria(this.getSubtotalsDetachedCriteria(nowyear + "-" + i + "-01","O_Sampledepend")));
			stf.setOAmodeldepend(this.workOrderService.getCountByCriteria(this.getSubtotalsDetachedCriteria(nowyear + "-" + i + "-01","O_Amodeldepend")));
			stf.setOSampleReq(this.workOrderService.getCountByCriteria(this.getSubtotalsDetachedCriteria(nowyear + "-" + i + "-01","O_SampleReq")));
			stf.setOOrderDelivery(this.workOrderService.getCountByCriteria(this.getSubtotalsDetachedCriteria(nowyear + "-" + i + "-01","O_OrderDelivery")));
			stf.setOOnsiteservice(this.workOrderService.getCountByCriteria(this.getSubtotalsDetachedCriteria(nowyear + "-" + i + "-01","O_Onsiteservice")));
			stf.setOComplainthand(this.workOrderService.getCountByCriteria(this.getSubtotalsDetachedCriteria(nowyear + "-" + i + "-01","O_Complainthand")));
			stf.setOReturnReq(this.workOrderService.getCountByCriteria(this.getSubtotalsDetachedCriteria(nowyear + "-" + i + "-01","O_ReturnReq")));
			liststf.add(stf);
		}
		this.getSession().setAttribute("liststf", liststf);

	}

	private DetachedCriteria getSubtotalsDetachedCriteria(String date, String os) {
		Userinfo user = this.getUserInfo(this.getRequest());
		DetachedCriteria detachedCriteria = DetachedCriteria
				.forClass(Workorder.class);
		if (StringUtils.isNotEmpty(date)) {
			detachedCriteria.add(Restrictions.ge(Workorder.PROP_CALLTIME,
					DateUtil.parseFormatDate(date, "yyyy-MM-dd")));
			detachedCriteria.add(Restrictions.le(Workorder.PROP_CALLTIME,
					DateUtil.parseFormatDate(DateUtil.getMonthEnd(date),
							"yyyy-MM-dd")));
		}
		if (StringUtils.isNotEmpty(os)) {
			detachedCriteria.add(Restrictions.eq(Workorder.PROP_ORDERTYPE, os));
		}
//		if(!StringUtils.equals(user.getIsadmin(), "true")){
			detachedCriteria.add(Restrictions.eq(Workorder.PROP_PK_USERINFO, user));
//		}
		return detachedCriteria;
	}
	
	public String createHtmlRole(Userinfo user){
		Set<BdRole> roles = new HashSet<BdRole>();
		Set<Authority> DBauthorities = new HashSet();
		List<BdRole> queryAllRole = roleService.queryAllRole();
		
		for(BdRole role : queryAllRole){
			for(Authority authority: role.getAuthorities()){
				DBauthorities.add(authority);
			}
			roles.add(role);
			
		}
		
		
		return SUCCESS;
	}
	
	

	public UserinfoForm getUserinfoForm() {
		return userinfoForm;
	}

	public void setUserinfoForm(UserinfoForm userinfoForm) {
		this.userinfoForm = userinfoForm;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public UserinfoService getUserinfoService() {
		return userinfoService;
	}

	public void setUserinfoService(UserinfoService userinfoService) {
		this.userinfoService = userinfoService;
	}

	public MenuinfoService getMenuinfoService() {
		return menuinfoService;
	}

	public void setMenuinfoService(MenuinfoService menuinfoService) {
		this.menuinfoService = menuinfoService;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public WorkOrderService getWorkOrderService() {
		return workOrderService;
	}

	public void setWorkOrderService(WorkOrderService workOrderService) {
		this.workOrderService = workOrderService;
	}

	public SubtotalsForm getSubtotalsForm() {
		return subtotalsForm;
	}

	public void setSubtotalsForm(SubtotalsForm subtotalsForm) {
		this.subtotalsForm = subtotalsForm;
	}

}
