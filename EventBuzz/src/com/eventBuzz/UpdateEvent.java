package com.eventBuzz;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventBuzz.Dao.RetrieveEventDao;


@WebServlet("/UpdateEvent")
public class UpdateEvent extends HttpServlet 
{

	
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	{
		int eventId = Integer.parseInt(req.getParameter("eid"));
		
		RetrieveEventDao dao = new RetrieveEventDao();
		dao.setEventID(eventId);
		dao.setEventData();
		
		String ename = dao.getEventName();
		String edate = dao.getEventDate();
		String etime = dao.getEtime();
		String venue = dao.getVenue();
	    int efees = (int) dao.getFees();
	    String p_link = dao.getPaymentLink();
	 //   String p_name = dao.getPosterName();
	    int size = dao.getTeamSize();
	    String clgName = dao.getClg();
	    
	    req.setAttribute("id", eventId);
	    req.setAttribute("name", ename);
	    req.setAttribute("date", edate);
	    req.setAttribute("time", etime);
	    req.setAttribute("venue", venue);
	    req.setAttribute("fees", efees);
	    req.setAttribute("paymentlink", p_link);
	    req.setAttribute("size", size);
	//    req.setAttribute("postername", p_name);
	    req.setAttribute("clgName", clgName);
	    
	    
	    try 
	    {
			req.getRequestDispatcher("Update_event.jsp").forward(req, res);
		} 
	    catch (ServletException e) 
	    {
			System.out.println("Servlet Exception" + e);
		} 
	    catch (IOException e) 
	    {
			System.out.println("I/O Exception" + e);
		}
	    
	    
		
		//res.sendRedirect("Update_event.jsp?");
	}
	
}
