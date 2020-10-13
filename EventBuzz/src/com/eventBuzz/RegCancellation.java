package com.eventBuzz;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventBuzz.Dao.CancellationDao;

public class RegCancellation extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	{
		int regID = Integer.parseInt(request.getParameter("rid"));
		CancellationDao dao = new CancellationDao();
		
		int num = dao.cancel(regID);
		
		try 
		{
			if(num == 0)
				System.out.println("Sorry! Registration cannot be cancelled. ");
			else
				response.sendRedirect("cancellationReg.jsp");
		} 
		catch (IOException e) 
		{
			System.out.println("Error in send redirect " + e);
		}
	}
}
