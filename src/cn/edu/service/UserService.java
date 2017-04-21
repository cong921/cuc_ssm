package cn.edu.service;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.edu.domain.User;
@Service
public interface UserService {
	public List<User> selectUserByUsernameAndPassword(String username,String password);
	public List<User> selectAllUser();
	public void saveUser(User user);
	public void deleteUserById(Integer id);
	public void updateUserById(Integer id);
	public List<User> queryById(Integer id);
	public void updateUser(User user);
}
