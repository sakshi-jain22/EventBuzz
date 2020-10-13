package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentRegDao 
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	String query;
	
	public int row_num=0;		// variable to give the length of the array
	public int id[] = null;
	
	public StudentRegDao()
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
	
	public void RegistrationIDrows(String uname)
	{
		query = "SELECT RegistrationID FROM registrationdata,students WHERE registrationdata.student_id = students.student_id AND students.UserName=?"
				+ " AND students.is_active=1 AND registrationdata.is_active=1";
		int i=0;
		row_num=0;
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			PreparedStatement sttemp = con.prepareStatement(query);
			sttemp.setString(1, uname);
			ResultSet rscopy = sttemp.executeQuery();
			while(rscopy.next())
				row_num++;
			id = new int[row_num];
			while(rs.next())
				id[i++] = rs.getInt(1);
		}
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
	}
	
	public String[] EventName()
	{
		query = "SELECT EventName FROM registrationdata, event_data WHERE registrationdata.EventID = event_data.EventID "
				+ "AND RegistrationID=?";
		String names[] = new String[row_num];
		int i = 0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 names[i] = rs.getString(1);
			}
			return names;
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public int[] teamMates_rows(String uname) 
	{
		query = "SELECT teamMates FROM registrationdata,students WHERE registrationdata.student_id = students.student_id "
				+ "AND UserName=? AND RegistrationID=?";
		int[] mates = new int[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, uname);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 mates[i] = rs.getInt(1);
			}
			return mates;
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] Edate()
	{
		query = "SELECT EventDate FROM registrationdata, event_data WHERE registrationdata.EventID = event_data.EventID "
				+ "AND RegistrationID=?";
		String arr[] = new String[row_num];
		int i = 0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 arr[i] = rs.getString(1);
			}
			return arr;
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] Etime()
	{
		query = "SELECT EventTime FROM registrationdata, event_data WHERE registrationdata.EventID = event_data.EventID "
				+ "AND RegistrationID=?";
		String arr[] = new String[row_num];
		int i = 0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 arr[i] = rs.getString(1);
			}
			return arr;
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] EClg()
	{
		query = "SELECT CollegeName FROM registrationdata, fest_coordinator WHERE registrationdata.coordinatorID = fest_coordinator.coordinatorID "
				+ "AND RegistrationID=?";
		String arr[] = new String[row_num];
		int i = 0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 arr[i] = rs.getString(1);
			}
			return arr;
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] EUni()
	{
		query = "SELECT University FROM registrationdata, fest_coordinator WHERE registrationdata.coordinatorID = fest_coordinator.coordinatorID "
				+ "AND RegistrationID=?";
		String arr[] = new String[row_num];
		int i = 0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 arr[i] = rs.getString(1);
			}
			return arr;
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public Connection getCon()
	{
		return con;
	}
}
