package com.eventBuzz;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventBuzz.Dao.S_DeactivateDao;



public class S_Deactivate extends HttpServlet{
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	{
		String s_id = request.getParameter("sid");
		
		S_DeactivateDao obj = new S_DeactivateDao();
		
		int var = obj.S_Deactivate(s_id);
		
		try 
		{
			if(var==0)
				System. out .println("not deleted");
			else
				response.sendRedirect("Viewstudents.jsp");
		} 
		catch (IOException e) 
		{
			System.out.println("I/O Exception " + e);
			e.printStackTrace();
		}
	}

}
