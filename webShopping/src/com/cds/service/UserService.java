package com.cds.service;

import java.util.List;
import java.util.Map;

import com.cds.po.User;

public interface UserService {
//	和UserDao的方法一样，可以封装，因为这边只是调用
	public void save(User user);
	public void delete(User id);
	public User findUserById(int id);
	public List<User> findAllUsers();
	public void update(User user); 
	//public void initPassword(User user);
	public User getUserByLoginNameAndPassword(String username, String password);
	public User findUserByName(String username);
	public User queryUser(String username,String name,String sex,String address,String phone);
	public User findUserByinfo(String username, String name, String sex,
			String phone, String post, String address, String email);
}
