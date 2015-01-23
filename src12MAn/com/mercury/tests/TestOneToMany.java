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
		House house1 = new House("1 Ave");
		//session.save(house1);
		House house2 = new House("2 Ave");
		//session.save(house2);
		Visitor visitor1 = new Visitor("Alice");
		//session.save(visitor1);
		Visitor visitor2 = new Visitor("Bob");
		//session.save(visitor2);
		Visitor visitor3 = new Visitor("Cindy");
		//session.save(visitor3);
		Visitor visitor4 = new Visitor("Daisy");
		//session.save(visitor4);
		Visitor visitor5 = new Visitor("Ema");
		//session.save(visitor5);
		session.save(house1);
		session.save(house2);
		house1.addVisitor(visitor1);
		house1.addVisitor(visitor2);
		house1.addVisitor(visitor3);
		house2.addVisitor(visitor4);
		house2.addVisitor(visitor5);
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
