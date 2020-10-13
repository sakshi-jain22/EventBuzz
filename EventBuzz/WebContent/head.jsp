<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700i&display=swap" rel="stylesheet" type="text/css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" type="text/css" rel="stylesheet">
    </head>
    <style>
        <jsp:include page="css/style.css"/>
    </style>

    <body>
        <center class="cntr">
            <img alt="logo" id="image" title="EventBuzz" border="1" src="/EventBuzz/img/logo.jpg" height="8%" width="8%">
            <font color="snow" size="5"><b>EventBUZZ</b></font>
        </center>
        <br>
        <div class="header">
            <div class="h">
                <span><a href="index.jsp" class="ah"> &nbsp;HOME&nbsp;</a></span>
                <span><a href="About.jsp" class="ah"> &nbsp;ABOUT US&nbsp;</a></span>
                <span>
				<%
		 				if(session.getAttribute("uname")!=null)
		 				{
		 					out.write("<div class='dropdown'>");
		 					out.write("<button class='dropbtn ah'> &nbsp;" + session.getAttribute("uname") + "&nbsp; </button>");
			 				out.write("<div class='dropdown-content'>");
			 				
			 				
			 				String usertype = (String) session.getAttribute("utype");
			 				if(usertype.equals("FEST_COORDINATOR") || usertype.equals("STUDENTS"))
			 				{
			 					out.write("<a href='profile.jsp' class='ah'>View Profile</a>");
			 				}
			 				if(usertype.equals("FEST_COORDINATOR"))
			 				{
			 					out.write("<a href='Add_Event.jsp' class='ah'>Create Event</a>");
			 					out.write("<a href='ViewCoordinatorEvents.jsp' class='ah'>View your events</a>");
			 				}
			 				if(usertype.equals("STUDENTS") || usertype.equals("ADMIN"))
			 				{
			 				out.write("<a href='viewEvents.jsp' class='ah'>View all events</a>");
			 				}
			 				if(usertype.equals("STUDENTS"))
			 					out.write("<a href='cancellationReg.jsp' class='ah'>Event Registration</a>");
			 				else if(usertype.equals("ADMIN"))
			 				{
			 					out.write("<a href='Viewcolleges.jsp' class='ah'>Colleges</a>");
			 					out.write("<a href='Viewstudents.jsp' class='ah'>Students</a>");
			 					out.write("<a href='Admin_delete.jsp' class='ah'>Delete previous events</a>");
			 				}
			 				out.write("<a href='logout.jsp' class='ah'>Logout</a>");
			 				out.write("</div>");
			 				out.write("</div>");
		 				}
			 			else
			 			{	
			 				out.write("<a href='Login.jsp' class='ah'>");
			 				out.write("&nbsp;LOGIN &nbsp;</a>");
			 			}
		 %>
			</span>
                <span><a href="Contact.jsp" class="ah"> &nbsp;CONTACT US&nbsp; </a></span>
            </div>
        </div>
    </body>

    </html>