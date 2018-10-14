package org.nwo.dao;

import org.nwo.domain.security.Role;

public interface RoleDao {
	Role findByname(String name);
	
	public void save(Role role);
}
