package com.cds.dao;

import java.util.List;

import com.cds.po.Admin;

public interface AdminDao {
	public void save(Admin admin);
	public void delete(Admin admin);
	public Admin findAdminById(int id);
	public List<Admin> findAllAdmins();
	public void update(Admin admin);
	//public void initPassword(User user);
	public Admin getUserByLoginNameAndPassword(String name, String password);

	
}
