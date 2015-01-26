package com.mercury.finance.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mercury.common.db.HibernateDao;
import com.mercury.finance.persistence.model.Trader;



@Service
@Transactional(readOnly = true)
public class TraderDetailsService {
	private Logger logger = Logger.getLogger(this.getClass());
	@Autowired
	@Qualifier("traderDao")
	private HibernateDao<Trader, Integer> td;

	public HibernateDao<Trader, Integer> getTd() {
		return td;
	}

	public void setTd(HibernateDao<Trader, Integer> td) {
		this.td = td;
	}
	public List<Trader> getAllTraders(){
		return td.findAll();
	}
	public void saveTrader(Trader trader){
		td.save(trader);
	}


/*	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		UserDetails user = null;  
		try {
			Trader trader = td.findBy("username", username);
			Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			authorities.add(new SimpleGrantedAuthority(trader.getAuthority()));
			user = new User(
					trader.getFname(),
					trader.getPassword(),
					trader.isEnabled(),
					true,
					true,
					true,
					authorities 
			);
		} catch (Exception e) {
			logger.error("Error in retrieving user" + e.getMessage());
			throw new UsernameNotFoundException("Error in retrieving user");
		}
		return user;
	}		  */
}
