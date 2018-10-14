package org.nwo.service.impl;

import java.util.Set;

import org.nwo.dao.PasswordResetTokenDao;
import org.nwo.dao.RoleDao;
import org.nwo.dao.UserDao;
import org.nwo.domain.User;
import org.nwo.domain.security.PasswordResetToken;
import org.nwo.domain.security.UserRole;
import org.nwo.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService{
	
	private static final Logger LOG = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private RoleDao roleDao;
	
	@Autowired
	private PasswordResetTokenDao passwordResetTokenDao;
	
	@Override
	@Transactional
	public PasswordResetToken getPasswordResetToken(final String token) {
		return passwordResetTokenDao.findByToken(token);
	}
	
	@Override
	@Transactional
	public void createPasswordResetTokenForUser(final User user, final String token) {
		final PasswordResetToken myToken = new PasswordResetToken(token, user);
		passwordResetTokenDao.save(myToken);
	}
	
	@Override
	@Transactional
	public User findByUsername(String username) {
		return userDao.findByUsername(username);
	}
	
	@Override
	@Transactional
	public User findByEmail (String email) {
		return userDao.findByEmail(email);
	}
	
	@Override
	@Transactional
	public User createUser(User user, Set<UserRole> userRoles){
		User localUser = userDao.findByUsername(user.getUsername());
		
		if(localUser != null) {
			LOG.info("user {} already exists. Nothing will be done.", user.getUsername());
		} else {
			for (UserRole ur : userRoles) {
				roleDao.save(ur.getRole());
			}
			
			user.getUserRoles().addAll(userRoles);
			
			localUser = userDao.save(user);
		}
		
		return localUser;
	}
	
	@Override
	@Transactional
	public User save(User user) {
		return userDao.save(user);
	}

}
