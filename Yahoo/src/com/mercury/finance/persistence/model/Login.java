package com.mercury.finance.persistence.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.*;

@Entity
@Table(name="LOGIN")
public class Login implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4883782338912459621L;
	private int tid;
	private String username;
	private String password;
	private Trader trader;
	
	//default constructor;
	public Login(){}
	public Login(String username, String password, Trader trader){
		this.username=username;
		this.password=password;
		this.trader=trader;
	}
	@GenericGenerator(name="generator",strategy="foreign",
	parameters=@Parameter(name="property",value="trader"))
	@Id
	@GeneratedValue(generator="generator")
	@Column(name="TID")
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	@Column(name="username")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Column(name="password")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@OneToOne
	@PrimaryKeyJoinColumn
	public Trader getTrader(){
		return trader;
	}
	public void setTrader(Trader trader){
		this.trader= trader;
	}
	@Override
	public String toString(){
		return tid+"\t"+username+"\t"+password+"\t"+trader;
	}
	

}
