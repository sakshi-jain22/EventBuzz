package com.eventBuzz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventBuzz.Dao.EventDao;
import com.eventBuzz.Dao.ManagerDao;


@WebServlet( "/deleteServlet" )

public class D_Admin extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String date = request.getParameter("date");
	
		EventDao dao = new EventDao();
		boolean row_num = dao.DelEvent(date);
	        
			
	
		if(row_num != false)
		{
			// out.write(row_num + " record deleted");
			response.sendRedirect("viewEvents.jsp");
		}
		else
		{
			session.setAttribute("error", "Unable to deleted!... Something went wrong.Try again later!!");
			response.sendRedirect("errorlog.jsp");
		}
	}
}

