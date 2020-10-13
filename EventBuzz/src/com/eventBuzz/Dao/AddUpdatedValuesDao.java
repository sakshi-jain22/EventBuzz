package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddUpdatedValuesDao {

	String url= "jdbc:mysql://localhost:3308/EVENTBUZZ";
	String uname ="root";
	String pass="tiger";	
	Connection con;
	
	int count;
	
	public AddUpdatedValuesDao()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) 
		{
			// TODO Auto-generated catch block
			System.out.println("Driver error " + e);
		}
	}
	
	public int update(String[] args)
	{
		String eid = args[0];
		String name=args[1];
		String date=args[2];
		String time=args[3];
		String venue=args[4];
		double fees = Double.parseDouble(args[5]);
		String p_link=args[6];
		int size=Integer.parseInt(args[7]);
		//int e_id = -1;
		
		
		
			String query = " update event_data set EventName=?,EventDate=?,EventTime=?,Venue=?,part_fee=?,pay_link=?,teamSize=? "
					+ "where EventId=? ";
	
	
	
	try {
			con = DriverManager.getConnection(url,uname,pass);
			PreparedStatement st = con.prepareStatement(query);
			
			st.setString(1, name);
			st.setString(2, date);
			st.setString(3, time);
			st.setString(4, venue);
			st.setDouble(5, fees);
			st.setString(6, p_link);
			st.setInt(7, size);
			st.setString(8, eid);
			
			
     	count = st.executeUpdate();
	
		System.out.println(count+" rows affected");
		
		
		
		
		st.close();
		con.close();
			
	} 
	catch (SQLException e) 
	{
			System.out.println("Sql Exception " + e);
	}
		return count;
	}
	
}
