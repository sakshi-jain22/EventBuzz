package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Update_PosterDao {

	String url= "jdbc:mysql://localhost:3308/EVENTBUZZ";
	String uname ="root";
	String pass="tiger";	
	Connection con;
	
	int count;
	
	public Update_PosterDao()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) 
		{
			// TODO Auto-generated catch block
			System.out.println("Driver error " + e);
		}
	}
	
	public int insert(String[] args)
	{
		String event_id = args[0];
		int e_id = Integer.parseInt(event_id);
		String fileName = args[1];
		
		String query = " update event_data set Eposter = ? where eventid = ? ";
		try {
			con = DriverManager.getConnection(url,uname,pass);
			PreparedStatement st = con.prepareStatement(query);
			
			st.setString(1, fileName);
			st.setInt(2, e_id);
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
