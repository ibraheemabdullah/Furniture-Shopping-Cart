/*package com.furniture.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.furniture.model.Cart;
import com.furniture.service.CartService;
import com.furniture.service.ProductService;

@Controller
public class CartController<CartBean> {
	@Autowired(required=true)
	private CartService cartService;
	@Autowired(required=true)
	private ProductService productService;
	
	public CartController() {
		
	}	
	
	public CartService getCartService() {
		return cartService;
	}

	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}




	public ProductService getProductService() {
		return productService;
	}




	public void setProductService(ProductService productService) {
		this.productService = productService;
	}




	@RequestMapping(value="/addtocart{id}")
	public ModelAndView addToCart(@ModelAttribute Cart cart,@RequestParam("id")String id)
	{

	    cart.setId(id);
	    cart.setProductName(productService.getName(id));
	    cart.setPrice(productService.getPrice(id));
	    cartService.saveOrUpdate(cart);
	    @SuppressWarnings("rawtypes")
		List cartList = cartService.list();
	    ModelAndView model = new ModelAndView("cart");
	    model.addObject("cartList",cartList.toString());
	    return model;
	    
	    }

	@RequestMapping(value={"/user/deletecart--{cartId}--cart","/deletecart--{cartId}--cart"})
	public ModelAndView deleteCart(@PathVariable int cartId)
	{
	System.out.println("deleting cart");
	    cartService.delete(cartId);
	    @SuppressWarnings("rawtypes")
		List cartList = cartService.list();
	    ModelAndView model;
	    System.out.println("Cart List" + cartList.isEmpty());
	    if(!cartList.isEmpty())
	    {
	    model = new ModelAndView("/cart");
	    model.addObject("cartList",cartList.toString());
	    }
	    else
	    {
	         model = new ModelAndView("product");

	    }
	    return model;
	}
	
	@RequestMapping(value = "/cart2", method = RequestMethod.GET)
	public String listCategorys(Model model) {
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartService.list().toString());
		return "cart";
	}

	@RequestMapping(value="/collectbillinginfo")
	public String collectBilling(@RequestParam("cartId") int cartId, @ModelAttribute("cart") Cart cart)
	{
		Cart mycart = cartService.findById(cartId); 
		
		System.out.println(mycart);
		return "redirect:/cart?cartId="+cartId;
	}
	public ModelAndView getProductList()
	{
		List<Product> plist=productService.list();
		ModelAndView model = new ModelAndView("allproducts");
	 
		model.addObject("productlist",plist.toString());
		System.out.println("All products");
		return model;
	}
	
	
	@RequestMapping(value={"/viewcart"})
	public ModelAndView viewCart()
	{
	    @SuppressWarnings("rawtypes")
		List cartList = cartService.list(id);
	    ModelAndView model;
	    System.out.println("Cart List" + cartList.isEmpty());
	    if(!cartList.isEmpty())
	    {
	    model = new ModelAndView("/cart");
	    model.addObject("cartList",cartList.toString());
	    model.addObject("cartId",((Cart)cartList.get(0)).getCartId());
	    
	    }
	    else
	    {
	         model=getProductList();

	    }
	    return model;

	}
	
	
	

	

}

*/