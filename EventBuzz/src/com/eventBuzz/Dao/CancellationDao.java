package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CancellationDao
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	String query;
	
	public CancellationDao()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
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
	
	public int cancel(int regID)
	{
		query = "UPDATE registrationdata SET is_active=0 WHERE RegistrationID=?";
		int temp = 0;
		try 
		{
			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, regID);
			temp = pst.executeUpdate();
			pst.close();
			con.close();
		} 
		catch (SQLException e) 
		{
			System.out.println("Couldn't execute query " + e);
		}
		return temp;
	}
}
