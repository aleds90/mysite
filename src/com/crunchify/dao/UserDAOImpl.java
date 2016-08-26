package com.crunchify.dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.crunchify.model.User;

public class UserDAOImpl implements UserDAO{
	
	private SessionFactory sessionFactory;

	public UserDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	@Override
	public boolean login(String username, String password) {
		// TODO Auto-generated method stub
		
		return false;
	}
	
	@Transactional
	@Override
	public ArrayList<User> getUsers() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User");
		return (ArrayList<User>) query.list();
	}

}
