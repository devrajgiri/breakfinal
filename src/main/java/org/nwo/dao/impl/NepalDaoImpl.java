package org.nwo.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.nwo.dao.NepalDao;
import org.nwo.domain.Nepal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NepalDaoImpl implements NepalDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Nepal save(Nepal nepal) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(nepal);
		return nepal;
	}

	@Override
	public List<Nepal> searchByItem(String item, String city, String location) {
		Session session = sessionFactory.getCurrentSession();
		String sql="select * FROM Nepal  where CONCAT_WS('', item1, item2, item3, item4) LIKE '%"+item+"%'";						
		List<Nepal> nepal = session.createNativeQuery(sql,Nepal.class).getResultList();
				return nepal;
	}
}
