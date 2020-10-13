package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminDao 
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	String query;
	
	public AdminDao()
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
	
	public boolean login(String uname, String pswd)
	{
		query = "SELECT * FROM ADMINN";
		String unm = null;
		String pass = null;
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			if(rs.next())
			{
				unm = rs.getString(1);
				pass = rs.getString(2);
			}
			if((unm.equals(uname)) && pass.equals(pswd))
				return true;
			else
				return false;
		} 
		catch (SQLException e) 
		{
			System.out.println("SQL exception" + e);
		}
		return false;
		
	}
	
	/**
	 * @return the con
	 */
	public Connection getCon() {
		return con;
	}
	/**
	 * @param con the con to set
	 */
	public void setCon(Connection con) {
		this.con = con;
	}
}
