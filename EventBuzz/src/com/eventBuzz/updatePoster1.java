package com.eventBuzz;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updatePoster1")

public class updatePoster1 extends HttpServlet {

	public void doPost(HttpServletRequest req,HttpServletResponse res)
	{
		int eventId = Integer.parseInt(req.getParameter("event_id"));
		
		
		
		req.setAttribute("id", eventId);
		try 
	    {
			req.getRequestDispatcher("AddNewPoster.jsp").forward(req, res);
		} 
	    catch (ServletException e) 
	    {
			System.out.println("Servlet Exception" + e);
		} 
	    catch (IOException e) 
	    {
			System.out.println("I/O Exception" + e);
		}
	    
		
		//System.out.println("event id is "+eventId);
		
		
	}
	
}
