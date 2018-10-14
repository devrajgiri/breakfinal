package org.nwo.dao;

import java.util.List;

import org.nwo.domain.India;

public interface IndiaDao {

India save(India india);

public List<India> searchByItem(String item,String city, String location);
	
}
