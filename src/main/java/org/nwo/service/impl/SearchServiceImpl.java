package org.nwo.service.impl;

import java.util.List;

import org.nwo.dao.AmericaDao;
import org.nwo.dao.IndiaDao;
import org.nwo.dao.NepalDao;
import org.nwo.domain.America;
import org.nwo.domain.India;
import org.nwo.domain.Nepal;
import org.nwo.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	private NepalDao nepalDao;
	
	@Autowired
	private IndiaDao indiaDao;
	
	@Autowired
	private AmericaDao americaDao;
	
	
	@Override
	@Transactional
	public Nepal saveNepal(Nepal nepal) {
		// TODO Auto-generated method stub
		return nepalDao.save(nepal);
	}

	@Override
	@Transactional
	public List<Nepal> searchByNepal(String item, String city, String location) {
		// TODO Auto-generated method stub
		return nepalDao.searchByItem(item, city, location);
	}

	@Override
	@Transactional
	public India saveIndia(India india) {
		return indiaDao.save(india);
	}

	@Override
	@Transactional
	public List<India> searchByIndia(String item, String city, String location) {
		// TODO Auto-generated method stub
		return indiaDao.searchByItem(item, city, location);
	}

	@Override
	@Transactional
	public America saveAmerica(America america) {
		return americaDao.save(america);
	}

	@Override
	@Transactional
	public List<America> searchByUsa(String item, String city, String location) {
		return americaDao.searchByItem(item, city, location);
	}
}
