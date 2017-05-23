package com.snowski.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.snowski.dao.UserDao;
import com.snowski.entity.User;
import com.snowski.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	public void save(User user) {
		// TODO Auto-generated method stub
		userDao.save(user);
	}

	public List<User> findAll() {
		return userDao.findAll();
	}

	public User findOne(int id) {
		return userDao.findOne(id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		userDao.delete(id);
	}

	public void update(User user) {
		// TODO Auto-generated method stub
		userDao.save(user);
	}
	
	
}
