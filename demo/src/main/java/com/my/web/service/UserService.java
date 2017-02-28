package com.my.web.service;

import java.util.List;

import com.my.web.model.User;

public interface UserService {
	
	public List<User> getUserById(String id);  
}
