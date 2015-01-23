package com.mercury.finance.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "stock")
public class Stock {
	public int sid;
	public String sname;
	public Set<Transaction> transactions = new HashSet<Transaction>(0);
	public Stock(){}

	@Id
	@GeneratedValue(generator="stock_seq")
	@SequenceGenerator(name="stock_seq",sequenceName="seq_stock", allocationSize=1)
	@Column(name = "sid", unique = true, nullable = false)
	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}
	@Column(name = "sname", unique = true, nullable = false)
	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stock")
	public Set<Transaction> getTransactions() {
		return transactions;
	}

	public void setTransactions(Set<Transaction> transactions) {
		this.transactions = transactions;
	};
}
