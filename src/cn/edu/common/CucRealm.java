package cn.edu.common;

import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import cn.edu.dao.UserMapper;
import cn.edu.domain.User;

public class CucRealm extends AuthorizingRealm {
	@Autowired
	private UserMapper userMapper;
	//认证方法
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token)
			throws AuthenticationException {
		UsernamePasswordToken usernamePasswordToken=(UsernamePasswordToken) token;
		String username = usernamePasswordToken.getUsername();
		char[] password = usernamePasswordToken.getPassword();
		User user = userMapper.selectByUsername(username);
		if(user==null) return null;
		else{
			SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(), this.getName());
			return info;
		}
	}
	//授权方法
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection paramPrincipalCollection) {
		//简单授权信息对象
				SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
				info.addStringPermission("staff");//授权
				//TODO 根据当前登录用户的id查询其对应的实际的权限
				return info;

	}
}
