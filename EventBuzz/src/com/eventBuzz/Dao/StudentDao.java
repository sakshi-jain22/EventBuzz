package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.eventBuzz.Genuine.Students;

public class StudentDao 
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	String query = null;
	private Students student;

	// To load and register the driver class
	public StudentDao()
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
	
	public boolean check(String uname, String pswd)
	{		
		query = "SELECT UserName, passwrd FROM STUDENTS WHERE UserName=? AND passwrd=? AND is_active=1";
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
	
	public int update(Students updateStudent)
	{	
		try
		{
			query = "UPDATE STUDENTS "
					+ "SET SName=?, "
					+ "UserName=?, "
					+ "Stud_mail=?, "
					+ "passwrd=?, "
					+ "sphoneNo=?, "
					+ "SCourse=?, "
					+ "SCollege=?, "
					+ "StudentYear=? "
					+ "WHERE student_id=?";
			PreparedStatement pst = con.prepareStatement(query);
			
			pst.setString(1, updateStudent.getName());
			pst.setString(2, updateStudent.username);
			pst.setString(3, updateStudent.getMail());
			pst.setString(4, updateStudent.getPassword());
			pst.setString(5, updateStudent.getPhoneNumber() + "");
			pst.setString(6, updateStudent.getCourse());
			pst.setString(7, updateStudent.getClg());
			pst.setInt(8, updateStudent.getYear());
			pst.setString(9, updateStudent.getEnroll());
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

	/**
	 * @return the student
	 */
	public Students getStudent() {
		return student;
	}

	/**
	 * @param uname the student to set
	 */
	public void setStudent(String username)
	{
		student = new Students();
		student.username = username;
		query = "SELECT student_id, SName, stud_mail, passwrd, sphoneNo, sCourse, SCollege, StudentYear, is_active FROM STUDENTS WHERE UserName=?";
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, student.username);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				student.setEnroll(rs.getString(1));
				student.setName(rs.getString(2));
				student.setMail(rs.getString(3));
				student.setPassword(rs.getString(4));
				student.setPhoneNumber(Long.parseLong(rs.getString(5)));
				student.setCourse(rs.getString(6));
				student.setClg(rs.getString(7));
				student.setYear(rs.getInt("StudentYear"));
				student.setIsActive(rs.getInt("is_active"));
			}
			rs.close();
			st.close();
			con.close();
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot connect to the database. " + error);			
		}
	}

	
	/*
	private void setEnroll(String uname) 	// done
	{
		query = "SELECT student_id FROM STUDENTS WHERE UserName=?";
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				student.setEnroll(rs.getString(1));
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot connect to the database. " + error);			
		}
	}

	private void setName(String uname) 	// done
	{
		query = "SELECT SName FROM STUDENTS WHERE UserName=?";
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				student.setName(rs.getString(1));
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot connect to the database. " + error);			
		}
	}

	private void setMail(String uname) 		//done
	{
		query = "SELECT stud_mail FROM STUDENTS WHERE UserName=?";
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				student.setMail(rs.getString(1));
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot connect to the database. " + error);			
		}
	}

	private void setPaswd(String uname) 	//done
	{
		query = "SELECT passwrd FROM STUDENTS WHERE UserName=?";
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				student.setPassword(rs.getString(1));
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot connect to the database. " + error);			
		}
	}

	private void setPhn(String uname) 		//done
	{
		query = "SELECT sphoneNo FROM STUDENTS WHERE UserName=?";
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				student.setPhoneNumber(Long.parseLong(rs.getString(1)));
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot connect to the database. " + error);			
		}
	}

	private void setCourse(String uname)		// done
	{
		query = "SELECT sCourse FROM STUDENTS WHERE UserName=?";
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				student.setCourse(rs.getString(1));
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot connect to the database. " + error);			
		}
	}

	private void setCollege(String uname) 		//done
	{
		query = "SELECT SCollege FROM STUDENTS WHERE UserName=?";
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				student.setClg(rs.getString(1));
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot connect to the database. " + error);			
		}
	}

	private void setYear(String uname) 		//done
	{
		query = "SELECT StudentYear FROM STUDENTS WHERE UserName=?";
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				this.student.setYear(rs.getInt(1));
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot connect to the database. " + error);			
		}
	}

	private void setActive(String uname) {
		query = "SELECT is_active FROM STUDENTS WHERE UserName=?";
		try 
		{
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			if(rs.next())
				this.student.setIsActive(rs.getInt(1));
		} 
		catch (SQLException error) 
		{
			System.out.println("Cannot connect to the database. " + error);			
		}
	}
	*/
}