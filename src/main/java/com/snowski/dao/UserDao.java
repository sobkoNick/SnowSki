package com.snowski.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.snowski.entity.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserDao extends JpaRepository<User, Integer> {
    User findByName(String login);

    @Query("select u from User u where u.uuid=:uuid")
    User findByUuid(@Param("uuid") String uuid);

//    @Query("select u from User u left join fetch u.orders o left join fetch o.products where u.id=:id")
    @Query("select distinct u from User u left join fetch u.orders where u.id=:id")
    User findUserWithOrders(@Param("id") int id);



}
