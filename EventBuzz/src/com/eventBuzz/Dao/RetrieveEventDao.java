/**
 *  JDBC Class to extract data of a particular event
 */
package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author Sakshi
 *
 */
public class RetrieveEventDao 
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	private int eventID;
	private String EventName;
	private String eventDate;
	private String etime;
	private String venue;
	private double fees;
	private String paymentLink;
	private int teamSize;
	private String posterName;
	private String cid;
	private String clg;
	
	public String query = null;

	public RetrieveEventDao()
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
	
	public void setEventData() 
	{
		query = "SELECT EventName,EventDate,EventTime,Venue,part_fee,pay_link,teamSize,EPoster FROM EVENT_DATA WHERE EventID=? AND is_active=1";
		
		try 
		{
			PreparedStatement st = this.getCon().prepareStatement(query);
			st.setInt(1, this.eventID);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				this.EventName = rs.getString(1);
				this.eventDate = rs.getString(2);
				this.etime = rs.getString(3);
				this.venue = rs.getString(4);
				this.fees = rs.getDouble(5);
				this.paymentLink = rs.getString(6);
				this.teamSize = rs.getInt(7);
				this.posterName = rs.getString(8);
			}
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		
		query = "SELECT CollegeName, FC.CoordinatorID FROM FEST_COORDINATOR AS FC, EVENT_DATA AS E WHERE FC.CoordinatorID=E.CoordinatorID AND EventID=? AND "
				+ "FC.is_active=1 AND E.is_active=1";
		
		try 
		{
			PreparedStatement st = this.getCon().prepareStatement(query);
			st.setInt(1, this.eventID);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				this.clg = rs.getString(1);
				this.cid = rs.getString(2);
			}
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		
		try 
		{
			this.getCon().close();
		} catch (SQLException e) 
		{
			System.out.println("Sql Exception:- Connection not closed " + e);
		}
	}
	
	public int getEventID()
	{
		return eventID;
	}

	public void setEventID(int eventID)
	{
		this.eventID = eventID;
	}

	public String getEventName() 
	{
		return EventName;
	}

	public String getEventDate() {
		return eventDate;
	}

	public String getEtime()
	{
		return etime;
	}

	public String getVenue() 
	{
		return venue;
	}

	public double getFees() 
	{
		return fees;
	}

	public String getPaymentLink()
	{
		return paymentLink;
	}

	public int getTeamSize() 
	{
		return teamSize;
	}

	public String getPosterName() 
	{
		return posterName;
	}

	public String getClg()
	{
		return clg;
	}
	
	public String getCid()
	{
		return cid;
	}

	/**
	 * @return the con
	 */
	public Connection getCon()
	{
		return con;
	}

	/**
	 * @param con the con to set
	 */
	public void setCon(Connection con)
	{
		this.con = con;
	}
}
