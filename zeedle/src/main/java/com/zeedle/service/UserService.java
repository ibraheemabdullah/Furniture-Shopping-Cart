package com.zeedle.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zeedle.dao.UserDAOImpl;

import com.zeedle.model.UserDetail;


@Service
@Transactional
public class UserService {
	@Autowired(required=true)
	UserDAOImpl userDAO;
	
	
	public List<UserDetail> getAllUser() {
		return userDAO.getAllUser();
	}
	
	public UserDetail getUserById(int id) {
		return userDAO.getUserById(id);
	}
	
	public boolean addUser(UserDetail user) {
		return userDAO.addUser(user);
		}
	
	public void updateUser(UserDetail user) {
		userDAO.updateUser(user);
	}
	
	public void deleteUser(int id) {
		userDAO.deleteUser(id);
	}
	
	
}
