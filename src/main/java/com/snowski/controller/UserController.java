package com.snowski.controller;

import com.snowski.entity.User;
import com.snowski.service.MailSenderService;
import com.snowski.service.UserService;
import com.snowski.validator.Validator;
import com.snowski.validator.userLoginValidation.UserLoginValidationMessages;
import com.snowski.validator.userValidator.UserValidatorMessages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.UUID;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private MailSenderService mailSenderService;
    @Autowired
    @Qualifier("userLoginValidator")
    private Validator validator;

    @GetMapping("/signUp")
    public String registration(Model model) {
        model.addAttribute("user", new User());
        return "views-user-signUp";
    }

    @PostMapping("/signUp")
    public String registration(@ModelAttribute User user, Model model) {

        String uuid = UUID.randomUUID().toString();
        user.setUuid(uuid);

        try {
            userService.save(user);
        } catch (Exception e) {
            if (e.getMessage().equals(UserValidatorMessages.EMPTY_USERNAME_FIELD) ||
                    e.getMessage().equals(UserValidatorMessages.USERNAME_ALREADY_EXIST)) {
                model.addAttribute("loginException", e.getMessage());
            }

            if (e.getMessage().equals(UserValidatorMessages.NO_DOG_SYMBOL)) {
                model.addAttribute("emailException", e.getMessage());
            }

            if (e.getMessage().equals(UserValidatorMessages.EMPTY_FIRST_NAME_FIELD)) {
                model.addAttribute("emptyFirstNameException", e.getMessage());
            }
            if (e.getMessage().equals(UserValidatorMessages.PASSWORD_FIELD_IS_INCORRECT)) {
                model.addAttribute("passwordException", e.getMessage());
            }
            if (e.getMessage().equals(UserValidatorMessages.EMPTY_LAST_NAME_FIELD)) {
                model.addAttribute("emptyLastNameException", e.getMessage());
            }
            if (e.getMessage().equals(UserValidatorMessages.TELEPHONE_FIELD_INCORRECT)) {
                model.addAttribute("telephoneException", e.getMessage());
            }
            return "views-user-signUp";
        }

        String theme = "Thank you for registration!";
        String mailBody = "Snow Ski Store welcomes you. Please follow this lonk to complete your registration: " +
                "http://localhost:8080/confirm/" + uuid;

        mailSenderService.sendMail(theme, mailBody, user.getEmail());

        return "redirect:/";
    }


    @GetMapping("/confirm/{uuid}")
    public String confirm(@PathVariable String uuid) {
        User user = userService.findByUuid(uuid);
        user.setEnable(true);

        userService.update(user);

        return "redirect:/";
    }

    @GetMapping("/profile")
    public String profile(Principal principal, Model model) {
        User user = userService.findUserWithProduct(Integer.parseInt(principal.getName()));
        model.addAttribute("userWithBasket", user);
        model.addAttribute("user", userService.findOne(Integer.parseInt(principal.getName())));
        return "views-user-profile";
    }

    @GetMapping("/history")
    public String history(Principal principal, Model model) {
        model.addAttribute("user", userService.findUserWithOrders(Integer.parseInt(principal.getName())));
        return "views-user-history";
    }

    @PostMapping("/failureLogin")
    public String failureLogin(Model model, @RequestParam String username,
                               @RequestParam String password) {
        try {
            validator.validate(new User(username, password));
        } catch (Exception e) {
            if (e.getMessage().equals(UserLoginValidationMessages.EMPTY_PASSWORD_FIELD) ||
                    e.getMessage().equals(UserLoginValidationMessages.EMPTY_USERNAME_FIELD) ||
                    e.getMessage().equals(UserLoginValidationMessages.WRONG_USENAME_OR_PASSWORD)) {
                model.addAttribute("exception", e.getMessage());
            }
        }
        model.addAttribute("user", new User());

        return "views-user-signUp";
    }

    @GetMapping("/updateProfile")
    public String updateUserProfile(Model model, Principal principal){
        model.addAttribute("updateUser", userService.findOne(Integer.parseInt(principal.getName())));
        return "views-user-updateProfile";
    }

    @PostMapping("/updateUser")
    public String updateUserProfile(@RequestParam String name, @RequestParam String email,
                                    @RequestParam String newPassword, @RequestParam String firstName, @RequestParam String lastName,
                                    @RequestParam String telephone, Principal principal, Model model) {
        User user = new User(name,email,"",firstName,lastName,"",telephone,"",0,"");
        try {
            userService.updateUser(user, newPassword, principal);
        } catch (Exception e) {
            if (e.getMessage().equals(UserLoginValidationMessages.WRONG_USENAME_OR_PASSWORD)) {
                System.out.println("e = " + e);
                model.addAttribute("passwordException", e.getMessage());
                return "redirect:/updateProfile";
            }
        }
        return "redirect:/profile";
    }

    @GetMapping("/users")
    public String getUsers(Model model) {
        model.addAttribute("users", userService.findAll());
        return "views-admin-users";
    }

    @GetMapping("/updateUserFields/{id}")
    public String getUpdateJSP(Model model, @PathVariable int id) {
        model.addAttribute("userBla", userService.findUserWithOrders(id));
        return "views-admin-updateUser";
    }
    @PostMapping("/updateUserByAdmin")
    public String updateUserByAdmin(@RequestParam int id , @RequestParam String status,
                                    @RequestParam int discount, @RequestParam boolean enable) {
        userService.updateuserByAdmin(id, status, discount,enable);
        return "redirect:/users";
    }

    @GetMapping("/deleteUser/{id}")
    public String deleteUser(@PathVariable int id) {
        userService.delete(id);
        return "redirect:/users";
    }

    @GetMapping("/deleteUserFromProfile")
    public String deleteUserFromProfile(Principal principal) {
        userService.delete(Integer.parseInt(principal.getName()));
        return "redirect:/";
    }
}
