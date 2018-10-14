package org.nwo.service.impl;

import java.util.List;

import org.nwo.dao.WorkerDao;
import org.nwo.domain.AmericanWorker;
import org.nwo.domain.IndianWorker;
import org.nwo.domain.NepalWorker;
import org.nwo.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class WorkServiceImpl implements WorkService {

	@Autowired
	private WorkerDao workerDao;
	
	@Override
	@Transactional
	public NepalWorker save(NepalWorker nepalWorker) {
		return workerDao.save(nepalWorker);
	}

	@Override
	@Transactional
	public IndianWorker save(IndianWorker indianWorker) {
		return workerDao.save(indianWorker); 
	}

	@Override
	@Transactional
	public AmericanWorker save(AmericanWorker americanWorker) {
		return workerDao.save(americanWorker);
	}

	@Override
	@Transactional
	public List<NepalWorker> searchByItemNepal(String item, String city, String location) {
		return workerDao.searchByItemNepal(item, city, location); 
	}

	@Override
	@Transactional
	public List<IndianWorker> searchByItemIndia(String item, String city, String location) {
		return workerDao.searchByItemIndia(item, city, location);
	}

	@Override
	@Transactional
	public List<AmericanWorker> searchByItemAmerica(String item, String city, String location) {
		// TODO Auto-generated method stub
		return workerDao.searchByItemAmerica(item, city, location);
	}

}
