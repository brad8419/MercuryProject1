package com.mercury.finance.persistence.dao;

import com.mercury.finance.persistence.model.Person;

public interface PersonDao {
	public Person getPersonById(int personId);
	public Person getPersonByUsername(String username);
}
