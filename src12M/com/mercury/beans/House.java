package com.mercury.beans;

import java.util.HashSet;
import java.util.Set;

public class House {
	private int hid;
	private String address;
	private Set<Visitor> visitors;
	
	public House() {
		visitors = new HashSet<Visitor>();
	}
	public House(int hid, String address) {
		this();
		this.hid = hid;
		this.address = address;
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
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
