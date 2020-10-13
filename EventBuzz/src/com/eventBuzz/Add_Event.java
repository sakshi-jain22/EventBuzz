package com.eventBuzz;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.eventBuzz.Dao.AddEventDao;
import com.eventBuzz.Genuine.Events;

/**
 * Servlet implementation class Add_Event
 */
@SuppressWarnings("serial")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,		// 2 MB
maxFileSize = 1024 * 1024 * 10,		// 10 MB
maxRequestSize = 1024 * 1024 * 50)		// 50 MB

public class Add_Event extends HttpServlet 
{
       
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		res.setContentType("text/html; charset=ISO-8859-1");
		
		String cid = req.getParameter("c_id");
		String ename = req.getParameter("e_nm");
		String date = req.getParameter("date");
		String time = req.getParameter("time");
		String venue = req.getParameter("venue");
		String fees = req.getParameter("fees");
		String p_link = req.getParameter("p_link");
		String size = req.getParameter("mnum");
		Part part = req.getPart("i_upload");
		String fileName = extractFileName(part);
		String savePath = "C:\\Users\\Sakshi\\eclipse-workspace\\myServlet\\EventBuzz\\WebContent\\img\\posterUpload\\" + File.separator + fileName;
		File fileSaveDir = new File(savePath);
		
		part.write(savePath + File.separator); 
		
		String[] arguments = new String[] {cid,ename,date,time,venue,fees,p_link,size,fileName};
		
		AddEventDao dao = new AddEventDao();
		int event_id = dao.insert(arguments);
		System.out.println("Event id is "+ event_id);
		
		res.sendRedirect("generateEvent.jsp?id=" + event_id);
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
