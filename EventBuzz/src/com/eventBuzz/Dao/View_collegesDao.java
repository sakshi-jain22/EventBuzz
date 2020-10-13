package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.eventBuzz.Genuine.FestOrganizer;

public class View_collegesDao 
{
	
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	String query;
	
	private int row_count;
	public FestOrganizer organizers[] = null;
	
	public View_collegesDao()
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
	
	
	public void fest()
	{
		query = "SELECT * FROM fest_coordinator where is_active=1";
        int i=0;
        row_count=0;
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			Statement s = con.createStatement();
			ResultSet rsc = s.executeQuery(query);
			while(rsc.next())
			{
				row_count++;
			}
			
			organizers = new FestOrganizer[row_count];
			
			while(rs.next())
			{
				organizers[i] = new FestOrganizer();
				organizers[i].username = rs.getString("CoordinatorID");
				organizers[i].setCollegeName(rs.getString("CollegeName"));
				organizers[i].setUniversity(rs.getString("University"));
				organizers[i].setStreetAddr(rs.getString("streetAddr"));
				organizers[i].setLocality(rs.getString("locality"));
				organizers[i].setCity(rs.getString("city"));
				organizers[i].setState(rs.getString("State"));
				organizers[i].setNearestMetro(rs.getString("NearestMetro"));
				organizers[i].setPinCode(rs.getInt("PinCode"));
				organizers[i].setCollegeEmail(rs.getString("clg_Email"));
				organizers[i].setCollegeWebsite(rs.getString("clg_website"));
				organizers[i].setCollegePhnNo(rs.getString("clg_phnNo"));
				i++;
				
			}
			
			st.close();
			rs.close();
			
		
			con.close();
			

		}
		catch (SQLException e1) {
			System.out.println("SQL Exception " + e1);
		} 
	}
	
	public int getRowCount()
	{
		return this.row_count;
	}

	public Connection getCon() {
		return con;
	}

	public void setCon(Connection con) {
		this.con = con;
	}
}
