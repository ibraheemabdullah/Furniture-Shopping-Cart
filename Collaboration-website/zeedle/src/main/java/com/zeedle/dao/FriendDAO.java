package com.zeedle.dao;

import java.util.List;

import com.zeedle.model.Friend;

public interface FriendDAO {
	public List<Friend> getMyFriends(int id);			
	public Friend get(int id, int friendId );
	public boolean save(Friend friend);
	public boolean update(Friend friend);
	public void delete(int id, int friendId);
	public List<Friend> getNewFriendRequest(int id);
	public void setOnline(int id);
	public void setOffLine(int id);
			// HERE id means userId;
}
