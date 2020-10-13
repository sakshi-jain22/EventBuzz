package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeactivateDao 
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	String query;	
	
	public DeactivateDao()
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
	
	
	public int Deactivate(String cid)
	{

		
		query = "update fest_coordinator set is_active=0 where CoordinatorID=?";
		int num=0;
		try 
		{
		
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1,cid);
			num = st.executeUpdate();
			
			st.close();
			con.close();
		} 
		catch (SQLException e1) {
			System.out.println("SQL Exception " + e1);
		} 
		
		return num;
	}

	public Connection getCon() {
		return con;
	}
	
	public void setCon(Connection con) {
		this.con = con;
	}
}
