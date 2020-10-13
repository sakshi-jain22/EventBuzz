package com.eventBuzz;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventBuzz.Dao.AddUpdatedValuesDao;

//@SuppressWarnings("serial")
public class AddUpdatedValues extends HttpServlet
{
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	{
		res.setContentType("text/html; charset=ISO-8859-1");
		
		String eid = req.getParameter("event_id");
		String ename = req.getParameter("e_nm");
		String date = req.getParameter("date");
		String time = req.getParameter("time");
		String venue = req.getParameter("venue");
		String fees = req.getParameter("fees");
		String p_link = req.getParameter("p_link");
		String size = req.getParameter("mnum");
		
		String arguments[] = new String[] {eid,ename,date,time,venue,fees,p_link,size};
		
		AddUpdatedValuesDao dao = new AddUpdatedValuesDao();
		int count = dao.update(arguments);
		if(count==0)
		{
		System.out.println("Sorry! The values cannot be updated. ");
		} else
		{
			try 
			{
				res.sendRedirect("ViewCoordinatorEvents.jsp");
			} 
			catch (IOException e) 
			{
				System.out.println("I/O Exception" + e);
			}
		}
	}	
}
