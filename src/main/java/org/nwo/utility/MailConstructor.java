package org.nwo.utility;

import java.util.Locale;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;

import org.nwo.domain.User;

@Component
public class MailConstructor {
	
	public SimpleMailMessage constructResetTokenEmail(
			String contextPath, Locale locale, String token, User user
			) {
		
		String url = contextPath + "/newUser?token="+token;
		String message = "\nPlease click on this link to verify your email and edit your personal information. Your password is: \n";
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(user.getUsername());
		email.setSubject("Search Local Store");
		email.setText(url+message);
		return email;
		
	}
}
