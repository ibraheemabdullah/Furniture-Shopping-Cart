/*package com.furniture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furniture.dao.CartDAOImpl;
import com.furniture.model.Cart;
@Service
@Transactional
public class CartService {
@Autowired
CartDAOImpl cartDAO;

public List<Cart> list(){
return cartDAO.list();
}
public void saveOrUpdate(Cart cart)
{
	cartDAO.saveOrUpdate(cart);
}
public Cart findById(int cartId)
{
return cartDAO.getCartById(cartId);
}

public Cart get(String id){
	return cartDAO.get(id);
}

public void delete(int id){
 cartDAO.delete(id);
}


	
}
*/