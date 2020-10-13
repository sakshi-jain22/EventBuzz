/*
 * 	JDBC class retrieve all the event details of a specific fest organizer
 */
package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OrganiserEventDao
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	String query;
	public int row_num=0;		// variable to give the length of the array
	public int id[] = null;
	public OrganiserEventDao()
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
	
	protected void finalize()
	{
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Cannot close execution. " + e);
		}
	}
	
	public void EventIDrows(String fID)
	{
		query = "SELECT EventID FROM EVENT_DATA WHERE CoordinatorID=? AND is_active=1";
		int i=0;
		
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, fID);
			ResultSet rs = st.executeQuery();
			PreparedStatement sttemp = con.prepareStatement(query);
			sttemp.setString(1, fID);
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
	
	public String[] EventName_rows(String fID) 
	{
		query = "SELECT EventName FROM EVENT_DATA WHERE CoordinatorID=? AND EventID=? AND is_active=1";
		String[] names = new String[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, fID);
				st.setInt(2, id[i]);
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
	
	public String[] EventDate_rows(String fID) 
	{
		query = "SELECT EventDate FROM EVENT_DATA WHERE CoordinatorID=? AND EventID=? AND is_active=1";
		String[] dates = new String[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, fID);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 dates[i] = rs.getString(1);
			}
			return dates;
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] EventTime_rows(String fID)
	{
		query = "SELECT EventTime FROM EVENT_DATA WHERE CoordinatorID=? AND EventID=? AND is_active=1";
		String timearr[] = new String[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, fID);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 timearr[i] = rs.getString(1);
			}
			return timearr;
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] EventVenue_rows(String fID)
	{
		query = "SELECT Venue FROM EVENT_DATA WHERE CoordinatorID=? AND EventID=? AND is_active=1";
		String[] arr = new String[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, fID);
				st.setInt(2, id[i]);
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
	
	public double[] partFees_rows(String fID)
	{
		query = "SELECT part_fee FROM EVENT_DATA WHERE CoordinatorID=? AND EventID=? AND is_active=1";
		double[] arr = new double[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, fID);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 arr[i] = rs.getDouble(1);
			}
			return arr;
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] paymentLink_rows(String fID)
	{
		query = "SELECT pay_link FROM EVENT_DATA WHERE CoordinatorID=? AND EventID=? AND is_active=1";
		String[] arr = new String[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, fID);
				st.setInt(2, id[i]);
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
	
	public int[] eTeamSize_rows(String fID)
	{
		query = "SELECT teamSize FROM EVENT_DATA WHERE CoordinatorID=? AND EventID=? AND is_active=1";
		int[] arr = new int[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, fID);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 arr[i] = rs.getInt(1);
			}
			return arr;
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] posterNames_rows(String fID)
	{
		query = "SELECT EPoster FROM EVENT_DATA WHERE CoordinatorID=? AND EventID=? AND is_active=1";
		String[] arr = new String[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, fID);
				st.setInt(2, id[i]);
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
	
	public Connection getCon() {
		return con;
	}
	public void setCon(Connection con) {
		this.con = con;
	}
}
