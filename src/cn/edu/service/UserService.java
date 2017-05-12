package cn.edu.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageInfo;

import cn.edu.common.UserExistException;
import cn.edu.domain.User;
@Service
public interface UserService {
	public List<User> selectUserByUsernameAndPassword(String username,String password);
	public PageInfo<User> selectAllUser(Integer rows);
	public void saveUser(User user) throws UserExistException;
	public void deleteUserById(Integer id);
	public void updateUserById(Integer id);
	public List<User> queryById(Integer id);
	public void updateUser(User user);
	public List<User> queryUserByUsername(User user);
}
