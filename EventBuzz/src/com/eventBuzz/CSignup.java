package com.eventBuzz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventBuzz.Dao.ManagerDao;
import com.eventBuzz.Genuine.FestOrganizer;

@SuppressWarnings("serial")
public class CSignup extends HttpServlet 
{
	public void doPost(HttpServletRequest request, HttpServletResponse response ) throws IOException
	{
		HttpSession session = request.getSession();
		String utype = (String) session.getAttribute("utype");
		
		if(utype.equals("FEST_COORDINATOR"))
		{
			FestOrganizer newOrganizer = new FestOrganizer();
			newOrganizer.username = request.getParameter("U_nm");
			newOrganizer.setPassword(request.getParameter("password"));
			String cpswd = request.getParameter("C_password");
			newOrganizer.setCollegeName(request.getParameter("C_name"));
			newOrganizer.setUniversity(request.getParameter("U_name"));
			newOrganizer.setLocality(request.getParameter("L_name"));
			newOrganizer.setStreetAddr(request.getParameter("addr"));
			newOrganizer.setCity(request.getParameter("Ct_name"));
			newOrganizer.setState(request.getParameter("St_name"));
			newOrganizer.setPinCode(Integer.parseInt(request.getParameter("P_name")));
			newOrganizer.setNearestMetro(request.getParameter("M_name"));
			newOrganizer.setCollegeEmail(request.getParameter("CEA_name"));
			newOrganizer.setCollegeWebsite(request.getParameter("CW_name"));
			newOrganizer.setCollegePhnNo(request.getParameter("CCN_name"));
			
			if(newOrganizer.getPassword().equals(cpswd))
			{
				ManagerDao dao = new ManagerDao();
				int row_num = dao.create(newOrganizer);
				PrintWriter out = response.getWriter();
				if(row_num != -1)
				{
					if(row_num == 0)
					{
						out.write("Retry Signup");
						try 
						{
							wait(10);
						} 
						catch (InterruptedException e) 
						{
							out.println();
							out.println("Data already present");
							System.out.println(e);
						}
						response.sendRedirect("signup.jsp");
					}
					try 
					{
						session.removeAttribute("utype");
						response.sendRedirect("Login.jsp");
					} 
					catch (IOException e) 
					{
						out.println();
						out.println("Unable to redirect. " + e);
					}
				}
				else
				{
					session.setAttribute("error", "Signup not created!... Something went wrong.Try again later!!");
					response.sendRedirect("errorlog.jsp");
				}
			}
			else
			{
				session.setAttribute("error", "Signup not created!... Since Password not confirmed");
				response.sendRedirect("errorlog.jsp");
			} 	
		}
		else
		{
			session.setAttribute("error", "Fill up the signup details correctly....");
			response.sendRedirect("errorlog.jsp");
		}
	}
}
