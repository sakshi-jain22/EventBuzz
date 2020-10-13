<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <!-- Icon Link -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <title>EventBuzz- Signup</title>
    </head>

    <body>

        <%
		String userType = request.getParameter("userType");
		session = request.getSession();
		
		if(userType.equals("student"))
		{
			session.setAttribute("utype", "STUDENTS");
			response.sendRedirect("signup.jsp");
		}
		else if(userType.equals("coordinator"))
		{
			session.setAttribute("utype","FEST_COORDINATOR");
			response.sendRedirect("festCoordinator.jsp");
		}
		else
		{
			session.setAttribute("error", "User Type not selected");
			response.sendRedirect("errorlog.jsp");
		}
	%>

    </body>

    </html>