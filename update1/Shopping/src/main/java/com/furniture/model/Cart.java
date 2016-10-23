package com.furniture.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Cart {
	 @Id
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
		private Integer cartid;
		private Integer userid;
		@OneToOne(mappedBy="cart",cascade=CascadeType.ALL)
		@JoinColumn(name="userid",insertable=false,updatable=false,nullable=false)
		private User user;
		public Integer getCartid() {
			return cartid;
		}
		public void setCartid(Integer cartid) {
			this.cartid = cartid;
		}
		public Integer getUserid() {
			return userid;
		}
		public void setUserid(Integer userid) {
			this.userid = userid;
		}
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}

		 
}