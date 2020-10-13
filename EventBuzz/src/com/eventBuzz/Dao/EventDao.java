package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EventDao 
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
String query;
	
	public EventDao()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			setCon(DriverManager.getConnection(url, user, password));
		}
		catch (ClassNotFoundException e)
		{
			System.out.println("Unable to load the JDBC bridge. " + e);
		}
		catch (SQLException error)
		{
			System.out.println("Cannot connect to the database. " + error);
	
		}
	}
	
	public boolean DelEvent(String dt)
	{  
		int num=-1;
		query = "UPDATE EVENT_DATA SET is_active=0 WHERE EventDate<?" ;
		
		try 
		{
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1,dt);
			num = pst.executeUpdate();
			pst.close();
			con.close();
		} 
		catch (SQLException e1) 
		{
			System.out.println("SQL Exception " + e1);
		}
	
		if(num >=0)
			return true;
		else
			return false;		
	}
	
	public Connection getCon() {
		return con;
	}

	public void setCon(Connection con) {
		this.con = con;
	}

	
}
	
	


