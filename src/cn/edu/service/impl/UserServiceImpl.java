package cn.edu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.abel533.entity.Example;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.edu.common.MD5Utils;
import cn.edu.common.OriginalPasswordWrongException;
import cn.edu.common.UserExistException;
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
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserNameEqualTo(username);
		criteria.andPasswordEqualTo(password);
		List<User> list = userMapper.selectByExample(example);
		return list;
	}

	@Override
	public PageInfo<User> selectAllUser(Integer rows) {
		PageHelper.startPage(rows, 10);
		UserExample example = new UserExample();
		List<User> list = userMapper.selectByExample(example);
		PageInfo<User> pageInfo = new PageInfo<User>(list);
		System.out.println(pageInfo);
		return pageInfo;
	}

	@Override
	public void saveUser(User user) throws UserExistException {
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserNameEqualTo(user.getUserName());
		List<User> list = userMapper.selectByExample(example);
		if (list.size() > 0) {
			throw new UserExistException("用户已存在");
		}
		userMapper.insertSelective(user);
	}

	@Override
	public void deleteUserById(Integer id) {
		userMapper.deleteByPrimaryKey(id);

	}

	@Override
	public void updateUserById(Integer id) {
		User user = new User();
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

	@Override
	public List<User> queryUserByUsername(User user) {
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserNameEqualTo(user.getUserName());
		return userMapper.selectByExample(example);
	}

	/**
	 * 修改密码
	 */
	@Override
	public void updateUserByUsernameAndPassword(User user, String newpassword)
			throws OriginalPasswordWrongException {
		UserExample example = new UserExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andUserNameEqualTo(user.getUserName());
		createCriteria.andPasswordEqualTo(user.getPassword());

		List<User> list = userMapper.selectByExample(example);
		if (list.size() > 0) {
			User originUser = list.get(0);
			originUser.setPassword(newpassword);
			int updateByExampleSelective = userMapper.updateByPrimaryKey(originUser);
			if(updateByExampleSelective<1) throw new OriginalPasswordWrongException("密码修改失败!");
		} else {
			throw new OriginalPasswordWrongException("原密码错误！");
		}

	}

}
