package com.mercury.finance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mercury.common.db.HibernateDao;
import com.mercury.finance.model.Stock;

@Service
@Transactional
public class AdminService {
	@Autowired
	@Qualifier("stockDao")
	private HibernateDao<Stock, Integer> stockD;

	public void addStock(Stock stock){
		stockD.save(stock);
	}
	
	public List<Stock> getStocks(){
		return stockD.findAll();
	}
	
	public HibernateDao<Stock, Integer> getStockD() {
		return stockD;
	}

	public void setStockD(HibernateDao<Stock, Integer> stockD) {
		this.stockD = stockD;
	}
	
}
