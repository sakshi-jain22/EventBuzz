package com.eventBuzz;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.eventBuzz.Dao.EventRegistrationDao;

/**
 * Servlet implementation class Register_Event
 */
@WebServlet("/Register_Event")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,		// 2 MB
maxFileSize = 1024 * 1024 * 10,		// 10 MB
maxRequestSize = 1024 * 1024 * 50)		// 50 MB
public class Register_Event extends HttpServlet 
{
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
	{
		response.setContentType("text/html; charset=ISO-8859-1");
		
		EventRegistrationDao dao = new EventRegistrationDao();
		File fileSaveDir;
		
		String event_id = request.getParameter("eid");
		String Student_enroll = request.getParameter("enroll");
		String organiserID = request.getParameter("c_id");
		String num = request.getParameter("mnum");
		String memberID = request.getParameter("mid");
		int registerID = -1;
		
		if(memberID.equals(""))
		{
			
			boolean screenshot = Boolean.parseBoolean(request.getParameter("uploadSS"));
			if(screenshot == true)
			{
				Part part;
				try 
				{
					part = request.getPart("i_upload");
					String fileName = extractFileName(part);
					String savePath = "C:\\Users\\Sakshi\\eclipse-workspace\\myServlet\\EventBuzz\\WebContent\\img\\screenshots\\" + File.separator + fileName;
					fileSaveDir = new File(savePath);
					
					part.write(savePath + File.separator); 
					
					String[] arguments = new String[] {event_id, Student_enroll, organiserID, num, fileName};
					registerID = dao.registerPaidEventsI(arguments);
				} 
				catch (IOException e) 
				{
					System.out.println("I/O Exception " + e);
				} 
				catch (ServletException e) 
				{
					System.out.println("Servlet Exception " + e);
				}
			}
			else
			{
				String[] arguments = new String[] {event_id, Student_enroll, organiserID, num};
				registerID = dao.registerFreeEventsI(arguments);
			}
		}
		else
		{
			boolean screenshot = Boolean.parseBoolean(request.getParameter("uploadSS"));
			if(screenshot == true)
			{
				Part part;
				try 
				{
					part = request.getPart("i_upload");
					String fileName = extractFileName(part);
					String savePath = "C:\\Users\\Sakshi\\eclipse-workspace\\myServlet\\EventBuzz\\WebContent\\img\\screenshots\\" + File.separator + fileName;
					fileSaveDir = new File(savePath);
					
					part.write(savePath + File.separator); 
					
					String[] arguments = new String[] {event_id, Student_enroll, organiserID, num, memberID, fileName};
					registerID = dao.registerPaidEventsTeam(arguments);
					//registerID = dao.registerPaidEvents(event_id, Student_enroll, organiserID, num, memID, fileName);
				} 
				catch (IOException e) 
				{
					System.out.println("I/O Exception " + e);
				} 
				catch (ServletException e) 
				{
					System.out.println("Servlet Exception " + e);
				}
			}
			else
			{
				String[] arguments = new String[] {event_id, Student_enroll, organiserID, num, memberID};
				registerID = dao.registerPaidEventsTeam(arguments);
				//registerID = dao.registerFreeEvents(event_id, Student_enroll, organiserID, num, memID);
			}
		}
		
		HttpSession session = request.getSession();		
		try 
		{
			
			session.setAttribute("registrationID", registerID);
			session.setAttribute("EventId", event_id);
			session.setAttribute("Enroll", Student_enroll);
			session.setAttribute("team", num);
			response.sendRedirect("viewRegID.jsp");
		}
		catch (IOException e) 
		{
			System.out.println("I/O Exception " + e);
		}
	}

	private String extractFileName(Part part)
	{
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items)
		{
			if(s.trim().startsWith("filename"))
			{
				return s.substring(s.indexOf("=")+2, s.length()-1);
			}
		}
		return "";
	}
}
