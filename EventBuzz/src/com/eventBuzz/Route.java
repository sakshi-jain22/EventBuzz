package com.eventBuzz;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class Route extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		String utype = request.getParameter("User");
		String uname = request.getParameter("U_nm");
		String pswd = request.getParameter("password");
		
		if(uname.equals("") || pswd.equals("") || utype.equals(""))
		{
			System.err.println("Login details empty!");
			response.sendRedirect("Login.jsp");
		}
		else 
		{
		
			request.setAttribute("uname", uname);
			request.setAttribute("password", pswd);
			
			if(utype.equals("Student"))
			{
				RequestDispatcher rd = request.getRequestDispatcher("LoginAsStudent");
				rd.forward(request, response);
			}
			else if(utype.equals("Coordinator"))
			{
				RequestDispatcher rd = request.getRequestDispatcher("loginAsCoordinator");
				rd.forward(request, response);
			}
			else
			{
				HttpSession session = request.getSession();
				session.setAttribute("error", "User Type not selected");
				response.sendRedirect("errorlog.jsp");
			}
		}
	}
}
