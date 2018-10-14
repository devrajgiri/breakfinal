package org.nwo.dao;

import org.nwo.domain.User;

public interface UserDao {

	
	public User findByUsername(String username);
	
	public User findByEmail(String email);
	
	public User save(User user);
}
