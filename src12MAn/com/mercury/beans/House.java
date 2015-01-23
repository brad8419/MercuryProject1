package com.mercury.beans;

import java.util.HashSet;
import java.util.Set;

//import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="House")
public class House {
	private int hid;
	private String address;
	private Set<Visitor> visitors;
	
	public House() {
		visitors = new HashSet<Visitor>();
	}
	public House(String address) {
		this();
		this.address = address;
	}
	
	@Id
	@GeneratedValue(generator="increment")
	@GenericGenerator(name="increment", strategy="increment")
	@Column(name="HID")
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	
	@Column(name="Address")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	@OneToMany(fetch=FetchType.LAZY, mappedBy="hid")
	@Cascade({CascadeType.ALL})
	public Set<Visitor> getVisitors() {
		return visitors;
	}
	public void setVisitors(Set<Visitor> visitors) {
		this.visitors = visitors;
	}
	
	public void addVisitor(Visitor visitor) {
		visitors.add(visitor);
		visitor.setHid(hid);
	}
	
	public void removeVisitor(Visitor visitor) {
		visitors.remove(visitor);
	}
}
