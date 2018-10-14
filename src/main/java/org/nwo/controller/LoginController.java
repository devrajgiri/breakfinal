package org.nwo.controller;

import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.nwo.domain.Nepal;
import org.nwo.domain.User;
import org.nwo.domain.security.Role;
import org.nwo.domain.security.UserRole;
import org.nwo.service.UserService;
import org.nwo.utility.MailConstructor;
import org.nwo.utility.SecurityUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;

//	@Autowired
//	private MailConstructor mailConstructor;
//
//	@Autowired
//	private JavaMailSender mailSender;
	

	
	public LoginController() {}
	
	
	@GetMapping("/LoginPage")
	public String showMyLoginPage(Model model) {

		return "fancy-login";

	}

		
	

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String newUserPost(HttpServletRequest request, @ModelAttribute("password") String passWord,
			@ModelAttribute("username") String username, Model model) throws Exception {
		
		if (userService.findByUsername(username) != null) {
			model.addAttribute("usernameExists", true);

			return "newuser";
		}

		User user = new User();
		user.setUsername(username);

		String encryptedPassword = SecurityUtility.passwordEncoder().encode(passWord);
		user.setPassword(encryptedPassword);

		Role role = new Role();
		role.setRoleId(1);
		role.setName("ROLE_USER");
		Set<UserRole> userRoles = new HashSet<>();
		userRoles.add(new UserRole(user, role));
		userService.createUser(user, userRoles);

		String token = UUID.randomUUID().toString();
		userService.createPasswordResetTokenForUser(user, token);
//
//	String appUrl = "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
//
//		SimpleMailMessage email = mailConstructor.constructResetTokenEmail(appUrl, request.getLocale(), token, user);
//
//		mailSender.send(email);
//
//		model.addAttribute("emailSent", "true");
		model.addAttribute("userCreated", true);
		model.addAttribute("user",user);

		return "newuser";
	}


}