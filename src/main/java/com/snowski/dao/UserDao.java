package com.snowski.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.snowski.entity.User;

public interface UserDao extends JpaRepository<User, Integer> {
    User findByLogin(String login);
}
