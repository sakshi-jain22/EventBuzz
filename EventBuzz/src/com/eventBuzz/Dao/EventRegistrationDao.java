package com.eventBuzz.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EventRegistrationDao 
{
	String url = "jdbc:mysql://localhost:3308/EventBuzz";
	String user = "root";
	String password ="tiger";
	private Connection con;
	
	String query;
	public int regID = -1;
	public int eveID;
	public String enroll;
	
	public EventRegistrationDao()
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
	
	public int registerFreeEventsTeam(String[] args)
	{
		int event_id = Integer.parseInt(args[0]);
		String Student_enroll = args[1];
		String organiserID = args[2];
		int num = Integer.parseInt(args[3]);
		int memID = Integer.parseInt(args[4]);
		
		this.eveID = event_id;
		this.enroll = Student_enroll;
		
		try
		{
			query = "INSERT INTO registrationdata(EventID, student_id, teamMates, memberID, coordinatorID) "
					+ "VALUES(?,?,?,?,?)";
			
			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, event_id);
			pst.setString(2, Student_enroll);
			pst.setInt(3, num);
			pst.setInt(4, memID);
			pst.setString(5, organiserID);
			int numRows = pst.executeUpdate();
			
			System.out.println(numRows + " rows affected");
			
			if(numRows > 0)
			{
				String query1 = "SELECT RegistrationID FROM REGISTRATIONDATA WHERE EventID=? AND student_id=? AND coordinatorID=? AND memberID=?";
				
				PreparedStatement ps = con.prepareStatement(query1);
				ps.setInt(1, this.eveID);
				ps.setString(2, this.enroll);
				ps.setString(3, organiserID);
				ps.setInt(4, memID);
				ResultSet rs = ps.executeQuery();
				
				if(rs.next())
					this.regID = rs.getInt(1);
				
				pst.close();
				ps.close();
				con.close();
			}
			return this.regID;
		}
		catch (SQLException error)
		{
			System.out.println("Cannot connect to the database. " + error);			
			return -1;
		}
	}
	
	public int registerPaidEventsTeam(String[] args)
	{
		int event_id = Integer.parseInt(args[0]);
		String Student_enroll = args[1];
		String organiserID = args[2];
		int num = Integer.parseInt(args[3]);
		int memID = Integer.parseInt(args[4]);
		String fileName = args[5];
		
		this.eveID = event_id;
		this.enroll = Student_enroll;
		
		try
		{
			query = "INSERT INTO registrationdata(EventID, student_id, PaymentSS, teamMates, memberID, coordinatorID) "
					+ "VALUES(?,?,?,?,?,?)";
			
			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, event_id);
			pst.setString(2, Student_enroll);
			pst.setString(3, fileName);
			pst.setInt(4, num);
			pst.setInt(5, memID);
			pst.setString(6, organiserID);
			int numRows = pst.executeUpdate();
			
			System.out.println(numRows + " rows affected");
			
			if(numRows > 0)
			{
				String query1 = "SELECT RegistrationID FROM REGISTRATIONDATA WHERE EventID=? AND student_id=? AND coordinatorID=? AND memberID=?";
				
				PreparedStatement ps = con.prepareStatement(query1);
				ps.setInt(1, eveID);
				ps.setString(2, enroll);
				ps.setString(3, organiserID);
				ps.setInt(4, memID);
				ResultSet rs = ps.executeQuery();
				
				if(rs.next())
					this.regID = rs.getInt(1);
				
				pst.close();
				ps.close();
				con.close();
			}
			return this.regID;
		}
		catch (SQLException error)
		{
			System.out.println("Cannot connect to the database. " + error);			
			return -1;
		}
	}
	
	public int registerFreeEventsI(String[] args)
	{
		int event_id = Integer.parseInt(args[0]);
		String Student_enroll = args[1];
		String organiserID = args[2];
		int num = Integer.parseInt(args[3]);
		
		this.eveID = event_id;
		this.enroll = Student_enroll;
		
		try
		{
			query = "INSERT INTO registrationdata(EventID, student_id, teamMates, memberID, coordinatorID) "
					+ "VALUES(?,?,?,NULL,?)";
			
			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, event_id);
			pst.setString(2, Student_enroll);
			pst.setInt(3, num);
			pst.setString(4, organiserID);
			int numRows = pst.executeUpdate();
			
			System.out.println(numRows + " rows affected");
			
			if(numRows > 0)
			{
				String query1 = "SELECT RegistrationID FROM REGISTRATIONDATA WHERE EventID=? AND student_id=? AND coordinatorID=? AND teamMates=?";
				
				PreparedStatement ps = con.prepareStatement(query1);
				ps.setInt(1, this.eveID);
				ps.setString(2, this.enroll);
				ps.setString(3, organiserID);
				ps.setInt(4, num);
				ResultSet rs = ps.executeQuery();
				
				if(rs.next())
					this.regID = rs.getInt(1);
				
				pst.close();
				ps.close();
				con.close();
			}
			return this.regID;
		}
		catch (SQLException error)
		{
			System.out.println("Database Exception. " + error);			
			return -1;
		}
	}
	
	public int registerPaidEventsI(String[] args)
	{
		int event_id = Integer.parseInt(args[0]);
		String Student_enroll = args[1];
		String organiserID = args[2];
		int num = Integer.parseInt(args[3]);
		String fileName = args[4];
		
		this.eveID = event_id;
		this.enroll = Student_enroll;
		
		try
		{
			query = "INSERT INTO registrationdata(EventID, student_id, PaymentSS, teamMates, memberID, coordinatorID) "
					+ "VALUES(?,?,?,?,NULL,?)";
			
			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, event_id);
			pst.setString(2, Student_enroll);
			pst.setString(3, fileName);
			pst.setInt(4, num);
			pst.setString(5, organiserID);
			int numRows = pst.executeUpdate();
			
			System.out.println(numRows + " rows affected");
			
			if(numRows > 0)
			{
				String query1 = "SELECT RegistrationID FROM REGISTRATIONDATA WHERE EventID=? AND student_id=? AND coordinatorID=? AND teamMates=?";
				
				PreparedStatement ps = con.prepareStatement(query1);
				ps.setInt(1, eveID);
				ps.setString(2, enroll);
				ps.setString(3, organiserID);
				ps.setInt(4, num);
				ResultSet rs = ps.executeQuery();
				
				if(rs.next())
					this.regID = rs.getInt(1);
				
				pst.close();
				ps.close();
				con.close();
			}
			return this.regID;
		}
		catch (SQLException error)
		{
			System.out.println("Cannot connect to the database. " + error);			
			return -1;
		}
	}
}
