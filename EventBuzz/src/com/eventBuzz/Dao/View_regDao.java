package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class View_regDao 
{	
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	String query;
	public int row_num=0;		// variable to give the length of the array
	public int id[] = null;
	public View_regDao()
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
	
	public void RegistrationIDrows(String eid)
	{
		query = "SELECT RegistrationID FROM registrationdata,students WHERE registrationdata.student_id = students.student_id AND eventid=? AND "
				+ "registrationdata.is_active=1 AND students.is_active=1";
		int i=0;
		row_num=0;
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, eid);
			ResultSet rs = st.executeQuery();
			PreparedStatement sttemp = con.prepareStatement(query);
			sttemp.setString(1, eid);
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
	
	public String[] PaymentSS_rows(String eid) 
	{
		query = "SELECT PaymentSS FROM registrationdata,students WHERE registrationdata.student_id = students.student_id "
				+ "AND eventid=? AND RegistrationID=?";
		String[] screenshots = new String[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, eid);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 screenshots[i] = rs.getString(1);
			}
			return screenshots;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public int[] teamMates_rows(String eid) 
	{
		query = "SELECT teamMates FROM registrationdata,students WHERE registrationdata.student_id = students.student_id "
				+ "AND eventid=? AND RegistrationID=?";
		int[] mates = new int[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, eid);
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
	
	public int[] MemberID_rows(String eid)
	{
		query = "SELECT memberid FROM registrationdata,students WHERE registrationdata.student_id = students.student_id "
				+ "AND eventid=? AND RegistrationID=?";
		int memberarr[] = new int[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, eid);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 memberarr[i] = rs.getInt(1);
			}
			return memberarr;
		} 
		catch (SQLException error)
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] sname_rows(String eid) 
	{
		query = "SELECT sname FROM registrationdata,students WHERE registrationdata.student_id = students.student_id"
				+ " AND eventid=? AND RegistrationID=?";
		String[] sname = new String[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, eid);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 sname[i] = rs.getString(1);
			}
			return sname;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] stumail_rows(String eid) 
	{
		query = "SELECT stud_mail FROM registrationdata,students WHERE registrationdata.student_id = students.student_id"
				+ " AND eventid=? AND RegistrationID=?";
		String[] stumail = new String[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, eid);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 stumail[i] = rs.getString(1);
			}
			return stumail;
		}
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] sphoneno_rows(String eid) 
	{
		query = "SELECT sphoneNo FROM registrationdata,students WHERE registrationdata.student_id = students.student_id AND eventid=? AND RegistrationID=?";
		String[] sphoneno = new String[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, eid);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 sphoneno[i] = rs.getString(1);
			}
			return sphoneno;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public String[] scollege_rows(String eid) 
	{
		query = "SELECT scollege FROM registrationdata,students WHERE registrationdata.student_id = students.student_id AND eventid=? AND RegistrationID=?";
		String[] scollege = new String[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, eid);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 scollege[i] = rs.getString(1);
			}
			return scollege;
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot execute query. " + error);			
		}
		return null;
	}
	
	public int[] studentyear_rows(String eid)
	{
		query = "SELECT studentyear FROM registrationdata,students WHERE registrationdata.student_id = students.student_id AND eventid=? AND RegistrationID=?";
		int[] stu_year = new int[row_num];
		int i=0;
		try 
		{
			for(i=0; i<row_num; i++)
			{
				PreparedStatement st = con.prepareStatement(query);
				st.setString(1, eid);
				st.setInt(2, id[i]);
				ResultSet rs = st.executeQuery();
				if(rs.next())
					 stu_year[i] = rs.getInt(1);
			}
			return stu_year;
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
