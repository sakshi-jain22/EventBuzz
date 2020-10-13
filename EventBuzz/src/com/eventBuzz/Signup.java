package com.eventBuzz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventBuzz.Dao.SignupDao;
import com.eventBuzz.Genuine.Students;


@SuppressWarnings("serial")
public class Signup extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response ) throws IOException
	{
		HttpSession session = request.getSession();
		String utype = (String) session.getAttribute("utype");
		
		if(utype.equals("STUDENTS"))
		{
			Students newStudent = new Students();
			newStudent.setEnroll(request.getParameter("eno"));
			newStudent.setName(request.getParameter("S_nm"));
			newStudent.username = request.getParameter("U_nm");
			newStudent.setMail(request.getParameter("email"));
			newStudent.setPassword(request.getParameter("password"));
			
			String cpass = request.getParameter("C_password");
			
			newStudent.setPhoneNumber(Long.parseLong(request.getParameter("P_No")));
			newStudent.setClg(request.getParameter("C_name"));
			newStudent.setYear(Integer.parseInt(request.getParameter("Year")));
						
			if (newStudent.getPassword().equals(cpass))
			{
				SignupDao s = new SignupDao();
				int row_num = s.create(newStudent);
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
						catch (InterruptedException e) {
							System.out.println("Interrupted Exception " + e);
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
