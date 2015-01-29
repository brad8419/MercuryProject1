package com.mercury.finance.resources;


import java.util.ArrayList;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.mercury.finance.model.Stock;
import com.mercury.finance.model.StockInfo;
import com.mercury.finance.service.YahooFinance;

@Path("/finance")
public class StockResource {
	private StockInfo stockInfo;
	public StockResource() {
		System.out.println("con");
		if (stockInfo==null) {
			stockInfo = new StockInfo();
			stockInfo.setStocks(new ArrayList<Stock>());
			String[] snames = {"C", "BAC", "GS", "GOOG", "EDU", "DRYS", "FB"};
			for (String sname:snames) {
				Stock stock = new Stock();
				stock.setSname(sname);
				stockInfo.addStock(stock);
			}
		}
	}
	@POST
	@Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
	public StockInfo execute() {
		YahooFinance.marketData(stockInfo.getStocks());
		return stockInfo;
	}
}
