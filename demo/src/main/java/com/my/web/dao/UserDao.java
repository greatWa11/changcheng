package com.my.web.dao;

import java.util.List;

import com.my.web.model.User;

public interface UserDao {

	public List<User> select(String id);
}
