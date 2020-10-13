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
public class CUpdate extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response ) throws IOException
	{
		HttpSession session = request.getSession();
		String utype = (String) session.getAttribute("utype");
		
		if(utype.equals("FEST_COORDINATOR"))
		{
			FestOrganizer organizer = new FestOrganizer();
			organizer.username = request.getParameter("U_nm");
			organizer.setPassword(request.getParameter("password"));
			String cpswd = request.getParameter("C_password");
			organizer.setCollegeName(request.getParameter("C_name"));
			organizer.setUniversity(request.getParameter("U_name"));
			organizer.setLocality(request.getParameter("L_name"));
			organizer.setStreetAddr(request.getParameter("addr"));
			organizer.setCity(request.getParameter("Ct_name"));
			organizer.setState(request.getParameter("St_name"));
			organizer.setPinCode(Integer.parseInt(request.getParameter("P_name")));
			organizer.setNearestMetro(request.getParameter("M_name"));
			organizer.setCollegeEmail(request.getParameter("CEA_name"));
			organizer.setCollegeWebsite(request.getParameter("CW_name"));
			organizer.setCollegePhnNo(request.getParameter("CCN_name"));
			
			if(organizer.getPassword().equals(cpswd))
			{
				ManagerDao dao = new ManagerDao();
				int row_num = dao.update(organizer);
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
