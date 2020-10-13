package com.eventBuzz;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventBuzz.Dao.ManagerDao;

@SuppressWarnings("serial")
public class LoginFC extends HttpServlet
{
	String usernm, pass;
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		HttpSession session = request.getSession();
		
		usernm = (String) request.getAttribute("uname");
		pass = (String) request.getAttribute("password");
		
		ManagerDao Dao = new ManagerDao();
		
		if(Dao.check(usernm, pass))
		{
			session.setAttribute("utype", "FEST_COORDINATOR");
			session.setAttribute("uname", usernm);
			response.sendRedirect("index.jsp");
		}
		else
		{
			session.setAttribute("error", "The username and paasword that you entered doesn't match any account.");
			response.sendRedirect("errorlog.jsp");
		}
	}
}
