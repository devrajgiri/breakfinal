package org.nwo.service;

import java.util.List;

import org.nwo.domain.AmericanWorker;
import org.nwo.domain.IndianWorker;
import org.nwo.domain.NepalWorker;

public interface WorkService {

	
	NepalWorker save(NepalWorker nepalWorker);
	
	IndianWorker save(IndianWorker indianWorker);
	
	AmericanWorker save(AmericanWorker americanWorker);
	
	List<NepalWorker> searchByItemNepal(String item, String city, String location);
	
	List<IndianWorker> searchByItemIndia(String item, String city, String location);
	
	List<AmericanWorker> searchByItemAmerica(String item, String city, String location);
	
}
