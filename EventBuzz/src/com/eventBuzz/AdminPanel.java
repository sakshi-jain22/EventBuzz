/**
 * 
 */
package com.eventBuzz;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventBuzz.Dao.AdminDao;

/**
 * @author Sakshi
 *
 */
@SuppressWarnings("serial")
public class AdminPanel extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	{
		String username = request.getParameter("U_nm");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		
		AdminDao dao = new AdminDao();
		
		if(dao.login(username, password))
		{
			session.setAttribute("utype", "ADMIN");
			session.setAttribute("uname", username);
			try 
			{
				response.sendRedirect("index.jsp");
			} 
			catch (IOException e) 
			{
				System.out.println("I/O Exception at 34" + e);
			}
		} 
		else
		{
			try 
			{
				response.sendRedirect("adminLogin.jsp");
			} 
			catch (IOException e) 
			{
				System.out.println("I/O Exception at line 45" + e);
			}
		}
	}
}
