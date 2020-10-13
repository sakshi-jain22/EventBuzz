/*
 * JDBC class to retreive all the events in parallel arrays
 */
package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class EventsArrayDao 
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	String query;
	
	public int eid[]=null;
	public int row_count=0;

	public EventsArrayDao()
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
	
	public void EventIDrows() 
	{
		query = "SELECT EventID FROM EVENT_DATA, FEST_COORDINATOR WHERE EVENT_DATA.is_active=1 AND FEST_COORDINATOR.is_active=1 AND EVENT_DATA.CoordinatorID=FEST_COORDINATOR.CoordinatorID";
		
		int i=0;
		try 
		{
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			Statement s = con.createStatement();
			ResultSet rsc = s.executeQuery(query);
			while(rsc.next())
			{
				row_count++;
			}
			
			eid = new int[row_count];
			while(rs.next())
			{
				eid[i++] = rs.getInt("EventID");
			}
		//	return names;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
	//	return null;
	}
	
	public String[] EventName_rows() 
	{
		query = "SELECT EventName FROM EVENT_DATA WHERE EventID=? AND is_active=1";
		String[] names = new String[row_count];
		int i=0;
		try 
		{
			for(i=0; i<row_count; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, eid[i]);
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

	public String[] EventDate_rows() 
	{
		query = "SELECT EventDate FROM EVENT_DATA WHERE EventID=? AND is_active=1";
		String[] dates = new String[row_count];
		int i=0;
		try 
		{
			for(i=0; i<row_count; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, eid[i]);
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
	
	public String[] EventTime_rows() 
	{
		query = "SELECT EventTime FROM EVENT_DATA WHERE EventID=? AND is_active=1";
		String[] clock = new String[row_count];
		int i=0;
		try 
		{
			for(i=0; i<row_count; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, eid[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 clock[i] = rs.getString(1);
			}
			return clock;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public int[] teamSize_rows() 
	{
		query = "SELECT teamSize FROM EVENT_DATA WHERE EventID=? AND is_active=1";
		int[] size = new int[row_count];
		int i=0;
		try 
		{
			for(i=0; i<row_count; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, eid[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 size[i] = rs.getInt(1);
			}
			return size;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] EventPosters_rows() 
	{
		query = "SELECT Eposter FROM EVENT_DATA WHERE EventID=? AND is_active=1";
		String[] poster_names = new String[row_count];
		int i=0;
		try 
		{
			for(i=0; i<row_count; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, eid[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 poster_names[i] = rs.getString(1);
			}
			return poster_names;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public double[] ParticipationFees_rows() 
	{
		query = "SELECT part_fee FROM EVENT_DATA WHERE EventID=? AND is_active=1";
		double[] charges = new double[row_count];
		int i=0;
		try 
		{
			for(i=0; i<row_count; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, eid[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 charges[i] = rs.getDouble(1);
			}
			return charges;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] EventPayment_rows() 
	{
		query = "SELECT pay_link FROM EVENT_DATA WHERE EventID=? AND is_active=1";
		int i=0;
		String[] link = new String[row_count];
		try 
		{
			
			for(i=0; i<row_count; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, eid[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 link[i] = rs.getString(1);
			}
			return link;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] EventVenue_rows() 
	{
		query = "SELECT Venue FROM EVENT_DATA WHERE EventID=? AND is_active=1";
		int i=0;
		
		String[] venue = new String[row_count];
		try 
		{
			for(i=0; i<row_count; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, eid[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 venue[i] = rs.getString(1);
			}
			return venue;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] EventClgs_rows() 
	{
		query = "SELECT CollegeName FROM FEST_COORDINATOR AS FC, EVENT_DATA AS E WHERE FC.CoordinatorID=E.CoordinatorID AND EventID=? AND "
				+ "FC.is_active=1 AND E.is_active=1";
		int i=0;
		
		String clgs[] = new String[row_count];
		try 
		{
			for(i=0; i<row_count; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setInt(1, eid[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 clgs[i] = rs.getString(1);
			} 
			return clgs;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
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
