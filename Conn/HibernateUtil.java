package com.Conn;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import com.entity.cricketTeam;

public class HibernateUtil {
	
	
	private static SessionFactory sessionFactory;
	
	
	public static SessionFactory getseSessionFactory()
	{
		if(sessionFactory ==null)
		{
			Configuration configuration = new Configuration();
			Properties properties = new Properties();
			
			
			properties.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
			properties.put(Environment.URL, "jdbc:mysql://localhost:3306/hibernate_db");
			properties.put(Environment.USER, "root");
			properties.put(Environment.PASS, "root");
//			properties.put(Environment.DIALECT, "org.hibernate.dialect.MySQLDialect"); //Old version
//			properties.put(Environment.HBM2DDL_AUTO, "create-drop");
			properties.put(Environment.DIALECT, "org.hibernate.dialect.MySQL8Dialect"); //new version
			properties.put(Environment.HBM2DDL_AUTO, "update");
			properties.put(Environment.SHOW_SQL, "true");

			configuration.setProperties(properties);

			configuration.addAnnotatedClass(cricketTeam.class);
			
			ServiceRegistry sr=  new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
			
			 sessionFactory = configuration.buildSessionFactory(sr);
			
		}
		
		return sessionFactory;
		
	}
	

}
