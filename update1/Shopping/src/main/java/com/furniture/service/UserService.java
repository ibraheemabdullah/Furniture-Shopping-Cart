package com.furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.UserDAOImpl;
import com.furniture.model.User;
@Transactional 
public class UserService {
	  @Autowired	
	  UserDAOImpl userDAO;
	  public void saveOrUpdate(User user){
			userDAO.saveOrUpdate(user);
		  
	  }
	
}
