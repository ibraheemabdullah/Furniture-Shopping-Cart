package com.zeedle.dao;

import java.util.List;


import com.zeedle.model.UserDetail;

public interface UserDAO {
	 List<UserDetail> getAllUser();
	 UserDetail getUserById(int id);
	    boolean addUser(UserDetail user);
	    void updateUser(UserDetail user);
	    void deleteUser(int id);

}
