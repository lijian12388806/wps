/**
 * 软件著作权：
 * 系统名称：
 * 创建日期： 
 */
package com.liveneo.plat.security;

import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.liveneo.plat.hibernate.dao.Authority;
import com.liveneo.plat.hibernate.dao.BdRole;
import com.liveneo.plat.service.impl.UserinfoService;
import com.liveneo.plat.structres.UserInfo;


/**
 * 登录验证
 * @version 1.0
 * @author LiaoGang
 */

public class WspUserDetailsService implements UserDetailsService ,Serializable{
	private static final long serialVersionUID = 2735743264777125232L;
	
	private UserinfoService userService;
	
	
	
	public void setUserService(UserinfoService userService) {
		this.userService = userService;
	}

	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		
		System.out.println(username+"-->登录操作");
		UserInfo user = userService.getByUsername(username);
		if(user==null) {
			throw new UsernameNotFoundException("用戶名不存在!");
		}
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		session.setMaxInactiveInterval(15*60);
		
		
		String password = user.getUser().getUserpwd();
		boolean enabled = true;
		boolean accountNonExpired = true;
		boolean credentialsNonExpired = true;
		boolean accountNonLocked = true;
		//找到用户对应的角色
		Set<Authority> empAuthorities = new HashSet<Authority>();
		for(BdRole role: user.getRoles()){
			for(Authority authority: role.getAuthorities()){
				empAuthorities.add(authority);
			}
		}
		
		Collection<GrantedAuthority> authorities = new LinkedHashSet<GrantedAuthority>();
		
		//获取该用户所具有的所有权限,然后添加到springsecurity框架中
		for(Authority authority : empAuthorities){
			authorities.add(new GrantedAuthorityImpl(authority.getName()));
		}
		
		SecurityUser securityUser = new SecurityUser(username, password, enabled,
			accountNonExpired, credentialsNonExpired, accountNonLocked, authorities, user);
		
		return securityUser;
	}
	
	public class SecurityUser extends org.springframework.security.core.userdetails.User {
		private static final long serialVersionUID = 5031099308611338175L;
		private UserInfo user;
		public UserInfo getUser() {
			return user;
		}
		public SecurityUser(String userName, String password, boolean enabled,
			boolean accountNonExpired, boolean credentialsNonExpired,
			boolean accountNonLocked,
			Collection<? extends GrantedAuthority> authorities,
			UserInfo user) {
			
			super(userName, password, enabled, accountNonExpired, credentialsNonExpired,
					accountNonLocked, authorities);
			this.user = user;
		}
	}
}
