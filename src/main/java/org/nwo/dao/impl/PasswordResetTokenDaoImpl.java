package org.nwo.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Stream;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.nwo.dao.PasswordResetTokenDao;
import org.nwo.domain.User;
import org.nwo.domain.security.PasswordResetToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PasswordResetTokenDaoImpl implements PasswordResetTokenDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@SuppressWarnings("unchecked")
	public PasswordResetToken findByToken(String token) {
		List<PasswordResetToken> tokens = new ArrayList<>();
		tokens = sessionFactory.getCurrentSession()
				.createQuery("from PasswordResetToken where token=?")
				.setParameter(0, token)
				.list();
		
		if(tokens.size()>0) {
			return tokens.get(0);
		}
		else {
			return null;
		}

	}

	@Override
	@SuppressWarnings("unchecked")
	public PasswordResetToken findByUser(User user) {
		int id = user.getId();
		List<PasswordResetToken> users = new ArrayList<>();
		users = sessionFactory.getCurrentSession()
				.createQuery("from PasswordResetToken where user_id=?")
				.setParameter(0, id)
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
	public Stream<PasswordResetToken> findAllByExpiryDateLessThan(Date now) {
		List<PasswordResetToken> expiry = new ArrayList<>();
		expiry = sessionFactory.getCurrentSession()
				.createQuery("from PasswordResetToken where expiryDate=?")
				.setParameter(0, now)
				.list();

		if(expiry.size()>0) {
			return expiry.stream();
		}
		else {
			return null;
		}
	}

	@Override
	public void deleteAllExpiredSince(Date now) {
		// TODO Auto-generated method stub

	}

	@Override
	public void save(PasswordResetToken myToken) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(myToken);
		
	}

}
