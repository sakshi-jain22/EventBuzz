/**
 * Servlet to update the student profile
 */
package com.eventBuzz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventBuzz.Dao.StudentDao;
import com.eventBuzz.Genuine.Students;

/**
 * @author Sakshi
 *
 */
@SuppressWarnings("serial")
public class StudentUpdate extends HttpServlet 
{
	public void doPost(HttpServletRequest request, HttpServletResponse response ) throws IOException
	{
		HttpSession session = request.getSession();
		String utype = (String) session.getAttribute("utype");
		
		if(utype.equals("STUDENTS"))
		{
			Students existStudent = new Students();
			String cpass = request.getParameter("C_password");
			existStudent.setEnroll(request.getParameter("eno"));
			existStudent.setName(request.getParameter("S_nm"));
			existStudent.username = request.getParameter("U_nm");
			existStudent.setMail(request.getParameter("email"));
			existStudent.setPassword(request.getParameter("password"));
			existStudent.setPhoneNumber(Long.parseLong(request.getParameter("P_No")));
			existStudent.setCourse(request.getParameter("Course"));
			existStudent.setClg(request.getParameter("C_name"));
			existStudent.setYear(Integer.parseInt(request.getParameter("Year")));
			
			if (existStudent.getPassword().equals(cpass))
			{
				StudentDao dao = new StudentDao();
				int row_num = dao.update(existStudent);
				PrintWriter out = response.getWriter();
				if(row_num != -1)
				{
					out.write(row_num + " record updated");
					session.invalidate();
					response.sendRedirect("Login.jsp");
				}
				else
				{
					session.setAttribute("error", "Unable to update!... Something went wrong.Try again later!!");
					response.sendRedirect("errorlog.jsp");
				}
			}
			else
			{
				session.setAttribute("error", "Password not confirmed");
				response.sendRedirect("errorlog.jsp");
			} 
		}
		else
		{
			session.setAttribute("error", "Fill up the details correctly....");
			response.sendRedirect("errorlog.jsp");
		}
	}
}
