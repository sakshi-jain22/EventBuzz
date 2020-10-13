package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.eventBuzz.Genuine.FestOrganizer;

public class ManagerDao 
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	public String query = null;
	private FestOrganizer festOrganizer = new FestOrganizer();
	
	public ManagerDao()
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
	
	public int create(FestOrganizer fs)
	{		
		try 
		{
			query = "INSERT INTO FEST_COORDINATOR(CoordinatorID, CollegeName, University, streetAddr, locality, city, State, NearestMetro, PinCode, clg_Email, clg_website, clg_phnNo, pswd) "
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, fs.username);
			pst.setString(2, fs.getCollegeName());
			pst.setString(3, fs.getUniversity());
			pst.setString(4, fs.getStreetAddr());
			pst.setString(5, fs.getLocality());
			pst.setString(6, fs.getCity());
			pst.setString(7, fs.getState());
			pst.setString(8, fs.getNearestMetro());
			pst.setInt(9, fs.getPinCode());
			pst.setString(10, fs.getCollegeEmail());
			pst.setString(11, fs.getCollegeWebsite());
			pst.setString(12, fs.getCollegePhnNo() + " ");
			pst.setString(13, fs.getPassword());
			int num = pst.executeUpdate();
			con.close();
			return num;
		}
		catch (SQLException error)
		{
			System.out.println("Cannot connect to the database. " + error);			
			return -1;
		}
		
	}
	
	public int update(FestOrganizer fs)
	{		
		try 
		{
			query = "UPDATE FEST_COORDINATOR "
					+ "SET CollegeName=?, "
					+ "University=?, "
					+ "streetAddr=?, "
					+ "locality=?, "
					+ "city=?, "
					+ "State=?, "
					+ "NearestMetro=?, "
					+ "PinCode=?, "
					+ "clg_Email=?, "
					+ "clg_website=?, "
					+ "clg_phnNo=?, "
					+ "pswd=? "
					+ "WHERE CoordinatorID=?";
			
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, fs.getCollegeName());
			pst.setString(2, fs.getUniversity());
			pst.setString(3, fs.getStreetAddr());
			pst.setString(4, fs.getLocality());
			pst.setString(5, fs.getCity());
			pst.setString(6, fs.getState());
			pst.setString(7, fs.getNearestMetro());
			pst.setInt(8, fs.getPinCode());
			pst.setString(9, fs.getCollegeEmail());
			pst.setString(10, fs.getCollegeWebsite());
			pst.setString(11, fs.getCollegePhnNo());
			pst.setString(12, fs.getPassword());
			pst.setString(13, fs.username);
			int num = pst.executeUpdate();
			con.close();
			return num;
		}
		catch (SQLException error)
		{
			System.out.println("Cannot connect to the database. " + error);			
			return -1;
		}
		
	}
	
	public boolean check(String uname, String pswd)
	{
		query = "SELECT CoordinatorID, pswd FROM FEST_COORDINATOR WHERE CoordinatorID=? AND pswd=? AND is_active=1";
		
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			st.setString(2, pswd);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				return true;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot connect to the database. " + error);			
			return false;
		}
		return false;
	}

	/**
	 * @return the festOrganizer
	 */
	public FestOrganizer getFestOrganizer() 
	{
		return festOrganizer;
	}

	/**
	 * @param uname the festOrganizer to set
	 */
	public void setFestOrganizer(String uname) 
	{
		this.festOrganizer.username = uname;
		
		query = "SELECT pswd, CollegeName, University, streetAddr, locality, city, State, PinCode, NearestMetro, clg_Email, clg_website, clg_phnNo "
				+ "FROM FEST_COORDINATOR "
				+ "WHERE CoordinatorID=?";
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				this.festOrganizer.setPassword(rs.getString(1));
				festOrganizer.setCollegeName(rs.getString(2));
				festOrganizer.setUniversity(rs.getString("University"));
				festOrganizer.setStreetAddr(rs.getString(4));
				festOrganizer.setLocality(rs.getString(5));
				festOrganizer.setCity(rs.getString(6));
				festOrganizer.setState(rs.getString(7));
				festOrganizer.setPinCode(rs.getInt("PinCode"));
				festOrganizer.setNearestMetro(rs.getString("NearestMetro"));
				festOrganizer.setCollegeEmail(rs.getString("clg_Email"));
				festOrganizer.setCollegeWebsite(rs.getString("clg_website"));
				festOrganizer.setCollegePhnNo(rs.getString("clg_phnNo"));
			}
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
	}

	public Connection getCon() {
		return con;
	}

	public void setCon(Connection con) {
		this.con = con;
	}
	
	protected void finalize()
	{
		try 
		{
			con.close();
		} 
		catch (SQLException e) 
		{
			System.out.println("Database Connection not closed" + e);
			e.printStackTrace();
		}
	}
}
