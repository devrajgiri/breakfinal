package org.nwo.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.nwo.dao.RoleDao;
import org.nwo.domain.security.Role;
import org.nwo.domain.security.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RoleDaoImpl implements RoleDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	@SuppressWarnings("unchecked")
	public Role findByname(String name) {
		List<Role> roles = new ArrayList<>();
		roles = sessionFactory.getCurrentSession()
				.createQuery("from Role where name=?")
				.setParameter(0, name)
				.list();
		
		if(roles.size()>0) {
			return roles.get(0);
		}
		else {
			return null;
		}

	}

	@Override
	public void save(Role role) {
	Session currentSession = sessionFactory.getCurrentSession();
	currentSession.saveOrUpdate(role);
		
	}

	
}
