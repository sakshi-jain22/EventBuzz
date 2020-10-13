package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CheckRegisteredDao 
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	private String query;
	
	public boolean validate(String sid, int eid)
	{
		boolean valid = false;
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
		
		query = "SELECT student_id, EventID FROM REGISTRATIONDATA WHERE student_id=? AND EventID=?";
		
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, sid);
			st.setInt(2, eid);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				valid = false;
			else
				valid = true;
			
			con.close();
		} 
		catch (SQLException error) 
		{
			System.out.println("Couldn't execute the query. " + error);			
			return false;
		}
		
		return valid;
	}
}
