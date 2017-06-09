package com.snowski.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.snowski.entity.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserDao extends JpaRepository<User, Integer> {
    User findByName(String login);

    @Query("select u from User u where u.uuid=:uuid")
    User findByUuid(@Param("uuid") String uuid);

}
