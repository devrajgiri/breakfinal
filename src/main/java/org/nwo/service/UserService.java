package org.nwo.service;

import java.util.Set;

import org.nwo.domain.User;
import org.nwo.domain.security.PasswordResetToken;
import org.nwo.domain.security.UserRole;

public interface UserService {
	PasswordResetToken getPasswordResetToken(final String token);
	
	void createPasswordResetTokenForUser(final User user, final String token);
	
	User findByUsername(String username);
	
	User findByEmail (String email);
	
	User createUser(User user, Set<UserRole> userRoles) throws Exception;
	
	User save(User user);
}
