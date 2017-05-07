package cn.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.edu.dao.UserMapper;
import cn.edu.domain.User;
import cn.edu.domain.UserExample;
import cn.edu.domain.UserExample.Criteria;
import cn.edu.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> selectUserByUsernameAndPassword(String username, String password) {
		UserExample example=new UserExample();
		Criteria criteria=example.createCriteria();
		criteria.andUserNameEqualTo(username);
		criteria.andPasswordEqualTo(password);
		List<User> list = userMapper.selectByExample(example);
		return list;
	}

	@Override
	public PageInfo<User> selectAllUser(Integer rows) {
		PageHelper.startPage(rows, 10);
		UserExample example=new UserExample();
		List<User> list = userMapper.selectByExample(example);
		PageInfo<User> pageInfo=new PageInfo<User>(list);
		System.out.println(pageInfo);
		return pageInfo;
	}

	@Override
	public void saveUser(User user) {
		userMapper.insertSelective(user);
	}

	@Override
	public void deleteUserById(Integer id) {
		userMapper.deleteByPrimaryKey(id);
		
	}

	@Override
	public void updateUserById(Integer id) {
		User user=new User();
		user.setId(id);
		userMapper.updateByPrimaryKey(user);
		
	}

	@Override
	public List<User> queryById(Integer id) {
		
		return userMapper.selectByPrimaryKey(id);
	}
	
	@Override
	public void updateUser(User user) {
		
		 userMapper.updateByPrimaryKeySelective(user);
	}
	
	
}
