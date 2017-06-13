package com.snowski.controller;

import com.snowski.entity.User;
import com.snowski.service.MailSenderService;
import com.snowski.service.UserService;
import com.snowski.validator.userValidator.UserValidatorMessages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.UUID;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private MailSenderService mailSenderService;
	@GetMapping("/signUp")
	public String registration(Model model){

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
					e.getMessage().equals(UserValidatorMessages.USERNAME_ALREADY_EXIST)){
				model.addAttribute("loginException", e.getMessage());
			}

			if(e.getMessage().equals(UserValidatorMessages.NO_DOG_SYMBOL)) {
				model.addAttribute("emailException", e.getMessage());
			}

			if(e.getMessage().equals(UserValidatorMessages.EMPTY_FIRST_NAME_FIELD)){
				model.addAttribute("emptyFirstNameException", e.getMessage());
			}
			if(e.getMessage().equals(UserValidatorMessages.PASSWORD_FIELD_IS_INCORRECT)){
				model.addAttribute("passwordException", e.getMessage());
			}
			if(e.getMessage().equals(UserValidatorMessages.EMPTY_LAST_NAME_FIELD)){
				model.addAttribute("emptyLastNameException", e.getMessage());
			}
			if(e.getMessage().equals(UserValidatorMessages.TELEPHONE_FIELD_INCORRECT)){
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

}
