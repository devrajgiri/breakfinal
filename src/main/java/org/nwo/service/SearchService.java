package org.nwo.service;

import java.util.List;

import org.nwo.domain.America;
import org.nwo.domain.India;
import org.nwo.domain.Nepal;

public interface SearchService {

	
	Nepal saveNepal(Nepal nepal);
	
	List<Nepal> searchByNepal(String item, String city, String location);
	
	India saveIndia(India india);
	
	List<India> searchByIndia(String item, String city, String location);

	America saveAmerica(America america);
	
	List<America> searchByUsa(String item, String city, String location);
}
