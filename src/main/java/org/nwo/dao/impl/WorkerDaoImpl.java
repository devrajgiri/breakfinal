package org.nwo.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.nwo.dao.WorkerDao;
import org.nwo.domain.AmericanWorker;
import org.nwo.domain.IndianWorker;
import org.nwo.domain.NepalWorker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WorkerDaoImpl implements WorkerDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public NepalWorker save(NepalWorker nepalWorker) {
	Session session = sessionFactory.getCurrentSession();
	session.saveOrUpdate(nepalWorker);
	return nepalWorker;
	}

	@Override
	public IndianWorker save(IndianWorker indianWorker) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(indianWorker);
		return indianWorker;
	}

	@Override
	public AmericanWorker save(AmericanWorker americanWorker) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(americanWorker);
		return americanWorker;
	}

	@Override
	public List<NepalWorker> searchByItemNepal(String item, String city, String location) {
		Session session = sessionFactory.getCurrentSession();
		String query = "select * FROM Nepalworker  where CONCAT_WS('', item1, item2) "
						+"LIKE '%"+item+"%'";
		List<NepalWorker> nepalWorker = session.createNativeQuery(query,NepalWorker.class).getResultList();
		return nepalWorker;
	}

	@Override
	public List<IndianWorker> searchByItemIndia(String item, String city, String location) {
		Session session = sessionFactory.getCurrentSession();
		String query = "select * FROM Indianworker  where CONCAT_WS('', item1, item2)"
						+" LIKE '%"+item+"%'";
		List<IndianWorker> indianWorker = session.createNativeQuery(query,IndianWorker.class).getResultList();
		return indianWorker;
	}

	@Override
	public List<AmericanWorker> searchByItemAmerica(String item, String city, String location) {
		Session session = sessionFactory.getCurrentSession();
		String query = "select * FROM Americanworker where CONCAT_WS('', item1, item2)"
						+" LIKE '%"+item+"%'";
		List<AmericanWorker> americanWorker = session.createNativeQuery(query,AmericanWorker.class).getResultList();
		return americanWorker;	}

}
