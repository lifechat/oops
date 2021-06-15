package com.cds.service.impl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Component;
import com.cds.dao.UserDao;
import com.cds.po.User;
import com.cds.service.UserService;
//把类交给spring管理(如同配置bean节点)此类受spring事务管理
@Component("userServiceImpl")
public class UserServiceImpl implements UserService {
	//要调用dao层代码,所以要有UserDao的对象，把其实现类靠spring注入
	@Resource(name="userDaoImpl")
	private UserDao userDao;
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void delete(User user) {
		this.userDao.delete(user);

	}
	public List<User> findAllUsers() {
		return this.userDao.findAllUsers();
	}
	public User findUserById(int id) {
		
		return this.userDao.findUserById(id);
	}

	public void save(User user) {
		this.userDao.save(user);

	}

	public void update(User user) {
		this.userDao.update(user);
	}

	public User getUserByLoginNameAndPassword(String username, String password) {
		
		return this.userDao.getUserByLoginNameAndPassword(username,password);
	}

	public User findUserByName(String username) {
		
		return this.userDao.findUserByName(username);
	}

	public User queryUser(String username, String name, String sex,
			String address, String phone) {
		return this.userDao.queryUser(username, name,sex,address, phone);
	}

	public User findUserByinfo(String username, String name, String sex,
			String phone, String post, String address, String email) {
		
		return this.userDao.findUserByinfo(username, name,sex,phone, post, address, email);
	}


}
