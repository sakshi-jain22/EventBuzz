package com.eventBuzz;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventBuzz.Dao.deleteEventDao;

@WebServlet("/Delete_event")
public class Delete_event extends HttpServlet {

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String eventId = req.getParameter("eid");
		
		String[] argument= new String[] {eventId};
		
		deleteEventDao dao = new deleteEventDao();
		int flag = dao.delete(argument);
		
		if(flag==0) {
		System.out.println("Sorry! Event cannot be deleted. ");
		}
		else
		res.sendRedirect("ViewCoordinatorEvents.jsp");
	}
	
}
