package com.furniture.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.furniture.model.Cart;
import com.furniture.model.User;
@Repository

public class UserDAOImpl implements UserDAO{

	public UserDAOImpl() {
	
	
	}

	@Autowired
	private SessionFactory sessionFactory;

	

	public UserDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}



	public void saveOrUpdate(User user) {
		
		Session session = sessionFactory.getCurrentSession();
		Cart cart =new Cart();
		
		cart.setUserid(user.getUserId());
		session.saveOrUpdate(cart);
		
		user.setCartid(cart.getCartid());
		session.saveOrUpdate(user);
		cart.setUserid(user.getUserId());
		session.saveOrUpdate(cart);
		session.flush();
		
	}

}
