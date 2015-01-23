package com.mercury.tests;

import java.util.List;

import org.hibernate.*;

import com.mercury.beans.House;
import com.mercury.beans.Visitor;
import com.mercury.util.HibernateUtil;

public class TestOneToMany {
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {
		Session session = HibernateUtil.currentSession();
		Transaction tx = session.beginTransaction();
		House house1 = new House(1,"1 Ave");
		session.save(house1);
		House house2 = new House(2,"2 Ave");
		session.save(house2);
		Visitor visitor1 = new Visitor(1,"Alice");
		Visitor visitor2 = new Visitor(2,"Bob");
		Visitor visitor3 = new Visitor(3,"Cindy");
		house1.addVisitor(visitor1);
		house1.addVisitor(visitor2);
		house2.addVisitor(visitor3);
		tx.commit();
		
		String hql = "from House";
		Query query = session.createQuery(hql);
		List<House> list = query.list();
		for(House h:list) {
			System.out.println(h.getHid()+"\t"+h.getAddress());
			for(Visitor v:h.getVisitors()) {
				System.out.println(v.getVname());
			}
		}
	}
}
