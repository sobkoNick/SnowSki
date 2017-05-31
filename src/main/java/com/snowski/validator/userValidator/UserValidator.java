package com.snowski.validator.userValidator;

import com.snowski.dao.UserDao;
import com.snowski.entity.User;
import com.snowski.validator.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Mykola on 29.05.2017.
 */
@Component
public class UserValidator implements Validator {

    @Autowired
    private UserDao userDao;

    @Override
    public void validate(Object o) throws Exception {

        User user = (User) o;

        if(user.getLogin().isEmpty()) {
            throw new UserException(UserValidatorMessages.EMPTY_USERNAME_FIELD);
        } else if (userDao.findByLogin(user.getLogin()) != null) {
            throw new UserException(UserValidatorMessages.USERNAME_ALREADY_EXIST);
        } else if (user.getEmail().contains("@") == false) {
            throw new UserException(UserValidatorMessages.NO_DOG_SYMBOL);
        } else if(user.getFirstName().isEmpty()) {
            throw new UserException(UserValidatorMessages.EMPTY_FIRST_NAME_FIELD);
        } else if(user.getLastName().isEmpty()) {
            throw new  UserException(UserValidatorMessages.EMPTY_LAST_NAME_FIELD);
        } else if(user.getPassword().isEmpty() || user.getPassword().length() < 6) {
            throw new  UserException(UserValidatorMessages.PASSWORD_FIELD_IS_INCORRECT);
        } else if(user.getTelephone().isEmpty() || user.getTelephone().length() < 10) {
            throw new  UserException(UserValidatorMessages.TELEPHONE_FIELD_INCORRECT);
        }

    }
}
