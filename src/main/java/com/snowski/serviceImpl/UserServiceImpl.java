package com.snowski.serviceImpl;

import java.security.Principal;
import java.util.List;

import com.snowski.entity.Role;
import com.snowski.validator.Validator;
import com.snowski.validator.userLoginValidation.UserLoginValidationMessages;
import com.snowski.validator.userValidator.UserException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.snowski.dao.UserDao;
import com.snowski.entity.User;
import com.snowski.service.UserService;

@Service("userDetailsService")
public class UserServiceImpl implements UserService, UserDetailsService {

    @Autowired
    private UserDao userDao;
    @Autowired
    @Qualifier("userValidator")
    private Validator validator;
    @Autowired
    private BCryptPasswordEncoder encoder;

    public void save(User user) throws Exception {
        user.setRole(Role.ROLE_USER);
        user.setPassword(encoder.encode(user.getPassword()));
        validator.validate(user);
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

    @Override
    public void updateUser(User user, String newPassword, Principal principal) throws UserException {
        User userToUpdate = userDao.findUserWithOrders(Integer.parseInt(principal.getName()));
        userDao.saveAndFlush(userToUpdate);
        userToUpdate.setEmail(user.getEmail());
        userToUpdate.setName(user.getName());
        userToUpdate.setFirstName(user.getFirstName());
        userToUpdate.setLastName(user.getLastName());

        if (!newPassword.isEmpty()) {
            if (encoder.matches(userToUpdate.getPassword(), user.getPassword())) {
                userToUpdate.setPassword(encoder.encode(newPassword));
            } else {
                throw new UserException(UserLoginValidationMessages.WRONG_USENAME_OR_PASSWORD);
            }
        }
        userDao.save(userToUpdate);
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        return userDao.findByNameOrEmail(s);    //log in with username or password
    }

    @Override
    public User findByUuid(String uuid) {
        return userDao.findByUuid(uuid);
    }

    @Override
    public User findUserWithOrders(int id) {
        return userDao.findUserWithOrders(id);
    }

    @Override
    public User findUserWithProduct(int id) {
        return userDao.findUserWithProducts(id);
    }
}
