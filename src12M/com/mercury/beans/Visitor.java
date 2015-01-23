package com.mercury.beans;

public class Visitor {
	private int vid;
	private String vname;
	private int hid;
	
	public Visitor() {}
	public Visitor(int vid, String vname) {
		this.vid = vid;
		this.vname = vname;
	}
	
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	
	public String toString() {
		return vid + " " + vname + " " + hid;
	}
}
