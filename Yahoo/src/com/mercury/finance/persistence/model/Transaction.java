package com.mercury.finance.persistence.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

import org.hibernate.annotations.GenericGenerator;

@XmlRootElement
public class Transaction {
	private int trans_id;
	private int tid;
	private int qty;
	private String status;
	private String t_date;
	private String process;
	private int sid;
	
	public Transaction(){}
	public Transaction(int trans_id, int tid, int qty, String status,
			String t_date, String process, int sid) {
		super();
		this.trans_id = trans_id;
		this.tid = tid;
		this.qty = qty;
		this.status = status;
		this.t_date = t_date;
		this.process = process;
		this.sid = sid;
	}
	
	@Id
	@GeneratedValue(generator="increment")
	@GenericGenerator(name="increment", strategy="increment")
	@Column(name="tid", nullable = false)
	public int getTrans_id() {
		return trans_id;
	}
	public void setTrans_id(int trans_id) {
		this.trans_id = trans_id;
	}
	
	@Column
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	
	@Column
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	
	@Column
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Column
	public String getT_date() {
		return t_date;
	}
	public void setT_date(String t_date) {
		this.t_date = t_date;
	}
	
	@Column
	public String getProcess() {
		return process;
	}
	public void setProcess(String process) {
		this.process = process;
	}
	
	@Column
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	
	
	

}
