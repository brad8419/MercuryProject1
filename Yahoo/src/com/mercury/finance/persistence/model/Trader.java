package com.mercury.finance.persistence.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="TRADER")
public class Trader implements java.io.Serializable {

		/**
	 * 
	 */
	private static final long serialVersionUID = 6520662796256268908L;
		/**
		 * 
		 */
		
		private int tid;
		private String fname;
		private String lname;
		private String email;
		private String role;
		private int balance;
		private Login login;
		// Constructors
		/** default constructor */
	    public Trader() {}

		public Trader(int tid, String fname, String lname, String email,
				String role, int balance, Login login) {
			super();
			this.tid = tid;
			this.fname = fname;
			this.lname = lname;
			this.email = email;
			this.role = role;
			this.balance = balance;
			this.login = login;
		}

		// Property accessors
	    @Id
	    @GeneratedValue(generator="increment")
		@GenericGenerator(name="increment", strategy="increment")
	    @Column(name="TID", nullable = false)
	    
	    
		public int getTid() {
			return tid;
		}
		public void setTid(int tid) {
			this.tid = tid;
		}
		
		@Column(name="fname")
		public String getFname() {
			return fname;
		}
		public void setFname(String fname) {
			this.fname = fname;
		}
		
		@Column(name="lname")
		public String getLname() {
			return lname;
		}
		public void setLname(String lname) {
			this.lname = lname;
		}
		
		@Column(name="email")
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		
		@Column(name="role")
		public String getRole() {
			return role;
		}
		public void setRole(String role) {
			this.role = role;
		}
		
		@Column(name="balance")
		public int getBalance() {
			return balance;
		}
		public void setBalance(int balance) {
			this.balance = balance;
		}
		@OneToOne(fetch = FetchType.LAZY,mappedBy = "trader", cascade = CascadeType.ALL)
		public Login getLogin() {
			return login;
		}
		public void setLogin(Login login) {
			this.login = login;
		}
		@Override
		public String toString(){
			return tid+"\t"+fname+" "+lname+"\t"+" "+email+"\t"+" "+role+"\t"+" "+balance+"\t";
		}

}
