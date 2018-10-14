package org.nwo.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.nwo.dao.AmericaDao;
import org.nwo.domain.America;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AmericaDaoImpl implements AmericaDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public America save(America america) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(america);
		return america;
	}

	@Override
	public List<America> searchByItem(String item, String city, String location) {
		Session session = sessionFactory.getCurrentSession();
		String sql="select * FROM America  where CONCAT_WS('', item1, item2, item3, item4) LIKE '%"+item+"%'";						
		List<America> america = session.createNativeQuery(sql,America.class).getResultList();
				return america;
}

}
