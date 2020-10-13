package com.eventBuzz;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventBuzz.Dao.DeactivateDao;

/**
 * Servlet implementation class Deactivate
 */
@WebServlet("/Deactivate")
public class Deactivate extends HttpServlet {

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	{
		String c_id = request.getParameter("cid");
		
		DeactivateDao obj = new DeactivateDao();
		
		int var = obj.Deactivate(c_id);
		
		try 
		{
			if(var==0)
				System. out .println("College not deleted");
			else
				response.sendRedirect("Viewcolleges.jsp");
		} 
		catch (IOException e) 
		{
			System.out.println("I/O Exception " + e);
		}
	}

}
