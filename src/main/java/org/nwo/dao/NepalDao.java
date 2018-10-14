package org.nwo.dao;


import java.util.List;

import org.nwo.domain.Nepal;

public interface NepalDao {

	
	Nepal save(Nepal nepal);

	List<Nepal> searchByItem(String item,String city, String location);
	
	
}
