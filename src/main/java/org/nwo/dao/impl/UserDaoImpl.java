package org.nwo.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.nwo.dao.UserDao;
import org.nwo.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@SuppressWarnings("unchecked")
	public User findByUsername(String username) {
		List<User> users = new ArrayList<>();
		users = sessionFactory.getCurrentSession()
				.createQuery("from User where username=?")
				.setParameter(0, username)
				.list();
		
		if(users.size()>0) {
			return users.get(0);
		}
		else {
			return null;
		}
	}

	@Override
	@SuppressWarnings("unchecked")
	public User findByEmail(String email) {
		List<User> users = new ArrayList<>();
		users = sessionFactory.getCurrentSession()
				.createQuery("from User where email=?")
				.setParameter(0, email)
				.list();
		
		if(users.size()>0) {
			return users.get(0);
		}
		else {
			return null;
		}
	}

	@Override
	public User save(User user) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(user);
		return user;

	}

}
