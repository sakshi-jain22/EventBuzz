package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.eventBuzz.Genuine.Students;

public class ViewStudentsDao 
{
	
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	String query;
	
	
	private Students[] totalStudents;
	
	
	public ViewStudentsDao()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			setCon(DriverManager.getConnection(url, user, password));
		}
		catch (ClassNotFoundException e)
		{
			System.out.println("Unable to load the JDBC bridge. " + e);
			e.printStackTrace();
		}
		catch (SQLException error)
		{
			System.out.println("Cannot connect to the database. " + error);
			error.printStackTrace();
		}
	}
	
	
	public void student()
	{
		query = "SELECT * FROM students where is_active=1";
        int i=0,row_count=0;
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
			
			this.totalStudents = new Students[row_count];
			
			
			while(rs.next())
			{
				totalStudents[i] = new Students();
				totalStudents[i].setEnroll(rs.getString("student_id"));
				totalStudents[i].setName(rs.getString("SName"));
				totalStudents[i].username=rs.getString("UserName");
				totalStudents[i].setMail(rs.getString("Stud_mail"));
				totalStudents[i].setPhoneNumber(Long.parseLong(rs.getString("sphoneNo")));
				totalStudents[i].setCourse(rs.getString("SCourse"));
				totalStudents[i].setClg(rs.getString("SCollege"));
				totalStudents[i].setYear(rs.getInt("StudentYear"));
				
				i++;
			}
			
			st.close();
			rs.close();
			
		
			con.close();
			

		}
		catch (SQLException e1) 
		{
			System.out.println("SQL Exception " + e1);
			e1.printStackTrace();
		} 
	}


	public Connection getCon() {
		return con;
	}


	public void setCon(Connection con) {
		this.con = con;
	}

	/**
	 * @return the totalStudents
	 */
	public Students[] getTotalStudents() {
		return totalStudents;
	}
}
