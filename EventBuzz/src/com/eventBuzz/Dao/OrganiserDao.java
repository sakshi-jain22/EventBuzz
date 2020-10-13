package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OrganiserDao 
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	public String query;
	
	private String university;
	private String Addr;
	private int pincode;
	private String Metro;
	private String email;
	private String Website;
	private long phnNo;
	
	public OrganiserDao(int eventID)
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
		
		query = "SELECT University, streetAddr, locality, city, State, NearestMetro, PinCode, clg_Email, clg_website, clg_phnNo "
				+ "FROM FEST_COORDINATOR AS FC, EVENT_DATA AS E "
				+ "WHERE FC.CoordinatorID=E.CoordinatorID AND EventID=? AND "
				+ "FC.is_active=1 AND E.is_active=1";
		
		try 
		{
			PreparedStatement st = this.con.prepareStatement(query);
			st.setInt(1, eventID);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				this.university = rs.getString(1);
				this.Addr = rs.getString(2) + ", " + rs.getString(3) + ", " + rs.getString(4) + ", " + rs.getString(5);
				this.Metro = rs.getString(6);
				this.pincode = rs.getInt(7);
				this.email = rs.getString(8);
				this.Website = rs.getString(9);
				this.phnNo = Long.parseLong(rs.getString(10));
			}
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		
		try 
		{
			this.con.close();
		} catch (SQLException error) 
		{
			System.out.println("Sql Exception:- Connection not closed " + error);
		}
	}

	public String getUniversity() {
		return university;
	}

	public String getAddr() {
		return Addr;
	}

	public int getPincode() {
		return pincode;
	}

	public String getMetro() {
		return Metro;
	}

	public String getEmail() {
		return email;
	}

	public String getWebsite() {
		return Website;
	}

	public long getPhnNo() {
		return phnNo;
	}
}
