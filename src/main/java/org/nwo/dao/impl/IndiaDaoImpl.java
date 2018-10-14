package org.nwo.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.nwo.dao.IndiaDao;
import org.nwo.domain.India;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class IndiaDaoImpl implements IndiaDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public India save(India india) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(india);
		return india;
	}

	@Override
	public List<India> searchByItem(String item, String city, String location) {
		Session session = sessionFactory.getCurrentSession();
		String sql="select * FROM India  where CONCAT_WS('', item1, item2, item3, item4) LIKE '%"+item+"%'";						
		List<India> india = session.createNativeQuery(sql,India.class).getResultList();
				return india;
		}
}
