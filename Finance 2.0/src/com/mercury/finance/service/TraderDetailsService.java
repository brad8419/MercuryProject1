package com.mercury.finance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.mercury.common.db.HibernateDao;
import com.mercury.finance.model.Trader;

@Service
@Transactional
public class TraderDetailsService{
	@Autowired
	@Qualifier("traderDao")
	private HibernateDao<Trader, Integer> td;
	
	public void setTd(HibernateDao<Trader, Integer> td) {
		this.td = td;
	}
	
	public HibernateDao<Trader, Integer> getTd(){
		return td;
	}

	public List<Trader> getAllTraders(){
		return td.findAll();
	}
	
	public void saveTrader(Trader trader){
		td.save(trader);
	}

}
