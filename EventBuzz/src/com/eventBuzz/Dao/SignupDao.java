package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.eventBuzz.Genuine.Students;

public class SignupDao
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	public int create(Students newStudent)
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			setCon(DriverManager.getConnection(url, user, password));
		}
		catch (ClassNotFoundException e)
		{
			System.out.println("Unable to load the JDBC bridge. " + e);
			return -1;
		}
		catch (SQLException error)
		{
			System.out.println("Cannot connect to the database. " + error);
			return -1;
		}
		
		try
		{
			String query = "INSERT INTO STUDENTS(student_id, SName, UserName,  Stud_mail, passwrd, sphoneNo, SCourse, SCollege, StudentYear) "
							+ "VALUES(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, newStudent.getEnroll());
			pst.setString(2, newStudent.getName());
			pst.setString(3, newStudent.username);
			pst.setString(4, newStudent.getMail());
			pst.setString(5, newStudent.getPassword());
			pst.setString(6, newStudent.getPhoneNumber() + "");
			pst.setString(7, newStudent.getCourse());
			pst.setString(8, newStudent.getClg());
			pst.setInt(9, newStudent.getYear());
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

	public Connection getCon() {
		return con;
	}

	public void setCon(Connection con) {
		this.con = con;
	}
}
