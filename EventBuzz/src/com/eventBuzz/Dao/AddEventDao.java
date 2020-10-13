package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AddEventDao 
{
	String url= "jdbc:mysql://localhost:3308/EVENTBUZZ";
	String uname ="root";
	String pass="tiger";	
	Connection con;
	
	public AddEventDao()
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
		String cid = args[0];
		String name=args[1];
		String date=args[2];
		String time=args[3];
		String venue=args[4];
		double fees=Double.parseDouble(args[5]);
		String p_link=args[6];
		int size=Integer.parseInt(args[7]);
		String fileName = args[8];
		int e_id = -1;
		
		
		
		String query = " insert into event_data(EventName,EventDate,EventTime,Venue,part_fee,pay_link,teamSize,Eposter,CoordinatorID) "
					 + "values(?,?,?,?,?,?,?,?,?)";
				
		
		
		
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
				st.setString(8, fileName);
				st.setString(9, cid);
				
				
	     	int count = st.executeUpdate();
		
			System.out.println(count+" rows affected");
			
			String query1 = "select eventid from event_data where EventName=? AND CoordinatorID=? AND EventDate=? AND EventTime=? AND Venue=? AND part_fee=? AND is_active=1";
			
			PreparedStatement st1 = con.prepareStatement(query1);
			st1.setString(1, name);
			st1.setString(2, cid);
			st1.setString(3, date);
			st1.setString(4, time);
			st1.setString(5, venue);
			st1.setDouble(6, fees);
			ResultSet rs = st1.executeQuery();
			
			
			if(rs.next())
				e_id = rs.getInt("eventid");
			
			
			
			st.close();
			st1.close();
			con.close();
				
		} catch (SQLException e) {
				System.out.println("Sql Exception " + e);
		}
		return e_id;

	}
}
