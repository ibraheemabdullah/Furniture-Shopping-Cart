package com.zeedle.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zeedle.model.UserDetail;


@Repository
public class UserDAOImpl implements UserDAO{

	
	public UserDAOImpl() {
		}
	@Autowired
	private SessionFactory sessionFactory;
	public UserDAOImpl(SessionFactory sessionFactory) {
		
		this.sessionFactory = sessionFactory;
	}
	public List<UserDetail> getAllUser() {
		@SuppressWarnings("unchecked")
		List<UserDetail> listUser = (List<UserDetail>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(UserDetail.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listUser;
		
	}
	public UserDetail getUserById(int id) {
		//select *from UserDetail where id='101'
				String hql = "from UserDetail where id=" + "'"+ id +"'";
				Query query = sessionFactory.getCurrentSession().createQuery(hql);
				
				@SuppressWarnings("unchecked")
				List<UserDetail> listUser = (List<UserDetail>) query.list();
				
				if (listUser != null && !listUser.isEmpty()) {
					return listUser.get(0);
				}
				return null;
			
	}
	public boolean addUser(UserDetail user) {
		sessionFactory.getCurrentSession().save(user);
		return false;
	}
	public void updateUser(UserDetail user) {
		sessionFactory.getCurrentSession().update(user);
		
	}
	public void deleteUser(int id) {
		UserDetail UserToDelete = new UserDetail();
		UserToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(UserToDelete);
		
	}
	

}
