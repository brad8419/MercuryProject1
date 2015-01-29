package com.mercury.finance.service;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mercury.common.db.HibernateDao;
import com.mercury.finance.model.Trader;
import com.mercury.finance.model.Transaction;

@Service
@Transactional
public class TransactionService {
	@Autowired
	@Qualifier("traderDao")
	private HibernateDao<Trader, Integer> traderD;
	
	public Set<Transaction> getTransactions(int id){
		return traderD.findById(id).getTransactions();
	}
}
