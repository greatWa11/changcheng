package com.my.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.web.dao.UserDao;
import com.my.web.model.User;
import com.my.web.service.UserService;

@Service("UserService")  
public class UserServiceImpl implements UserService {  
	
	@Autowired  
    private UserDao userDao;

	public List<User> getUserById(String id) {
		
		return userDao.select(id);
	} 
}  
