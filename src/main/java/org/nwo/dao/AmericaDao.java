package org.nwo.dao;

import java.util.List;

import org.nwo.domain.America;

public interface AmericaDao {

	public America save(America america);

	public List<America> searchByItem(String item,String city, String location);

}
