package com.mercury.tests;


import java.util.List;



import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import com.mercury.finance.persistence.model.Login;
import com.mercury.finance.persistence.model.Trader;
import com.mercury.util.HibernateUtil;

public class Test1to1 {

	/**
	 * @param args
	 */
	@SuppressWarnings("unchecked")
	public static void main(String[] args) {
		System.out.println("Hibernate one to one (annotation)");
		Session session=HibernateUtil.getSessionFactory().openSession();
		//SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		//Session session = sf.openSession();
		Transaction tx=session.beginTransaction();
		
		  Trader trader=new Trader();
		  trader.setFname("Joy");
		  trader.setLname("ZH");
		  trader.setEmail("joy@gmail.com");
		  trader.setRole("ROLE_ADMIN");
		  trader.setBalance(20000);
		
		  Login login=new Login();
		  login.setUsername("joy");
		  login.setPassword("12345");
		 
		  login.setTrader(trader);
		  trader.setLogin(login);
		
		   session.save(trader);
		   
		tx.commit();

		String hql="from Trader";
		Query query=session.createQuery(hql);
//		System.out.println(".............");
//		List<Trader> list=query.list();
//		System.out.println("......qu.......");
//		for( Trader t:list){
//			System.out.println(t);
//		}
		System.out.println(".............");//login
		  hql="from Login";
		  query=session.createQuery(hql);
		  List<Login> list2=query.list();
		System.out.println("...............");
		System.out.println("tid"+"  "+"username"+" "+"password"+" "+"tid"+"\t"+"fname"+" "+"lname"+" "+"email"+" "+"role"+" "+"balance");
		for( Login l:list2){
			System.out.println(l);
		}
	session.close();
		//HibernateUtil.closeSession();
	}

}
