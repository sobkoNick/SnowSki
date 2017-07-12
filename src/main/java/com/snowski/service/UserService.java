package com.snowski.service;

import java.security.Principal;
import java.util.List;

import com.snowski.entity.User;
import com.snowski.validator.userValidator.UserException;

public interface UserService {
	void save(User user) throws Exception;

	List<User> findAll();

	User findOne(int id);

	void delete(int id);

	void update(User user);

	User findByUuid(String uuid);
	User findUserWithOrders(int id);
	User findUserWithProduct(int id);

	void updateUser(User user, String newPassword, Principal principal) throws UserException;

	void updateuserByAdmin(int id, String status, int discount, boolean enable);
//	void addToCard(int id, Principal principal);
}
