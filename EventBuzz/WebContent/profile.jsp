<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>EventBuzz</title>
    </head>

    <body>
        <%
	String utype = (String) session.getAttribute("utype");

	if(utype==null)
	{
		out.write("<script type='text/javascript'>alert('Something Went Wrong...'); location='Login.jsp'; </script>");
	}
	else if(utype.equals("STUDENTS"))
	{
		RequestDispatcher rd = request.getRequestDispatcher("myprofile.jsp");
		rd.forward(request, response);
	}
	else if(utype.equals("FEST_COORDINATOR"))
	{
		RequestDispatcher rd = request.getRequestDispatcher("FCprofile.jsp");
		rd.forward(request, response);
	}
	else
	{
		out.write("<script type='text/javascript'>alert('Something Went Wrong...'); location='Login.jsp'; </script>");
	}
%>

            <script src="js/alertmsg.js" type="text/javascript"></script>
    </body>

    </html>