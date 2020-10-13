package com.eventBuzz;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



import com.eventBuzz.Dao.Update_PosterDao;

@WebServlet("/updatePoster2")

@SuppressWarnings("serial")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,		// 2 MB
maxFileSize = 1024 * 1024 * 10,		// 10 MB
maxRequestSize = 1024 * 1024 * 50)		// 50 MB
public class updatePoster2 extends HttpServlet 
{

	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		String event_id  = req.getParameter("event_id");
		
		Part part = req.getPart("i_upload");
		String fileName = extractFileName(part);
		String savePath = "C:\\Users\\Sakshi\\eclipse-workspace\\myServlet\\EventBuzz\\WebContent\\img\\posterUpload\\" + File.separator + fileName;
		File fileSaveDir = new File(savePath);
		
		part.write(savePath + File.separator); 
		
		String[] arguments = new String[] {event_id,fileName};
		
		Update_PosterDao dao = new Update_PosterDao();
		int count = dao.insert(arguments);
		
		if(count==0)
		{
		System.out.println("Sorry! Updatation cannot be done.");
		}
		else
		res.sendRedirect("Update_event.jsp");
	
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
