package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class deleteEventDao 
{
	String url= "jdbc:mysql://localhost:3308/EVENTBUZZ";
	String uname ="root";
	String pass="tiger";	
	Connection con;
	
	public deleteEventDao()
	{
	
	  try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) 
		{
			// TODO Auto-generated catch block
			System.out.println("Driver error " + e);
		}
	
	}
	
	public int delete(String[] args)
	{
		
		int count=0;
		String eid = args[0];
		
		String query = "update event_data set is_active='0' where EventID=?";
		
		try {
			con = DriverManager.getConnection(url,uname,pass);
			PreparedStatement st = con.prepareStatement(query);
			
			st.setString(1, eid);
			count = st.executeUpdate();
			
			System.out.println(count+" rows affected");
		
			st.close();
			con.close();
				
		} catch (SQLException e) {
				System.out.println("Sql Exception " + e);
		}
		
		return count;

	}
	
	
}
