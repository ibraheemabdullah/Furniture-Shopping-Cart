/*package com.furniture.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.furniture.model.Cart;

@Repository

public class CartDAOImpl implements CartDAO{
	public CartDAOImpl() {
		
	}
@Autowired

	private SessionFactory sessionFactory;
	
	

	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Cart> list() {
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) sessionFactory.getCurrentSession().createCriteria(Cart.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}

	
	public void saveOrUpdate(Cart cart) {
		sessionFactory.getCurrentSession().saveOrUpdate(cart);
	}
	
	
	public Cart get(String userID) {
		String hql = "from Cart where userID=" + "'" + userID + "'  and status = " + "O";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>)query.list();

		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}

		return null;
	}
	
	public Cart getCartById(int cartId) {
		Session session=sessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class, cartId);
		if(cart!=null)
			return cart;
		else
		return null;

	}
	
	public void delete(String cartId) {
		Cart cartToDelete = new Cart();
		cartToDelete.setCartId(cartId);;
		sessionFactory.getCurrentSession().delete(cartToDelete);
	}

	
	public String delete(String id) {
		Cart cart = new Cart();
		cart.setUserID(id);
		try {
			sessionFactory.getCurrentSession().delete(cart);
		} catch (HibernateException e) {
			e.printStackTrace();
			return e.getMessage();

		}
		return null;
	}

	
	


	public int getTotalAmount(String id) {
		String hql = "select sum(price) from Cart where userID = " + "'" + id + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		query.executeUpdate();
		return query.getFirstResult();   // Need to check
		
		return 26322;

	}


	public Cart getByName(String name) {
		
		return null;
	}
	
	
	public String modifyCart(Cart cart) {
		System.out.println("Updating Cart");
		Session session=sessionFactory.openSession();
		
		Criteria c = session.createCriteria(Cart.class);
		
		@SuppressWarnings("unchecked")
		List<Cart> cartUser = c.list();
		System.out.println(cartUser);
		for(Cart user : cartUser)
		{
			user.setStreetNo(cart.getStreetNo());
			user.setCity(cart.getCity());
			user.setHouseNo(cart.getHouseNo());
			user.setZip(cart.getZip());
			user.setPhone(cart.getPhone());
			session.update(user);
		}
		//session.saveOrUpdate(cart);
		session.flush();
		return "success";
	}
	
}


*/