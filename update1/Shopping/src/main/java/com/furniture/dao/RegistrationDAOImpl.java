/*package com.furniture.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.furniture.model.Category;
import com.furniture.model.Registration;
@Repository
public class RegistrationDAOImpl implements RegistrationDAO{
	public RegistrationDAOImpl() {
	}

	@Autowired
	private SessionFactory sessionFactory;


	public RegistrationDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public List<Registration> list() {
		
		@SuppressWarnings("unchecked")
		List<Registration> listRegistration = (List<Registration>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Registration.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listRegistration;
	}
	public  void saveOrUpdate(Registration registration) {
		
			sessionFactory.getCurrentSession().saveOrUpdate(registration);
	}
	

	public void delete(String id) {
		Registration RegistrationToDelete = new Registration();
		RegistrationToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(RegistrationToDelete);
	}


	
	public Registration get(String id) {
		
		//select *from Category where id='101'
		String hql = "from Registration where id=" + "'"+ id +"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Registration> listRegistration = (List<Registration>) query.list();
		
		if (listRegistration != null && !listRegistration.isEmpty()) {
			return listRegistration.get(0);
		}
		
		return null;
	}
}
*/