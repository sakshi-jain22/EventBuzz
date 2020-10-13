<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link href="//fonts.googleapis.com/css?family=Domine&subset=latin" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <!-- Icon Link -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <title>EventBuzz: Add Event</title>
    </head>
    <style type="text/css">
        <jsp:include page="css/style1.css" />
    </style>

    <body>
        <jsp:include page="head.jsp"/>
            <br>
            <%
	int eventID = Integer.parseInt(request.getParameter("id"));
	if(eventID != -1 )
	{
		out.write("<script> alert('Event Added.'); </script>");
	}
	if(eventID == -1)
	{
		out.write("<script> alert('OOps! Event Not Added.... May be changing filename could help'); </script>");
	}
	if(eventID > 0)
	{
%>
                <center>
                    <form method="post" action="Add_Event.jsp">
                        <table>
                            <tr>
                                <div class="form-group">
                                    <td align="right"><label class="control-label col-sm-12" for="e_nm">Event ID: &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                    <td>
                                        <div class="col-sm-12">
                                            <input type="text" class="form-control" name="e_nm" value="<%= eventID %>" disabled>
                                        </div>
                                    </td>
                                    <td><i class="fa fa-tasks" aria-hidden="true"></i></td>
                                </div>
                            </tr>
                        </table>
                        <br> Press to Continue <button type="submit" class="btn-success"> Proceed<i class="fa fa-external-link"></i> </button>
                    </form>
                </center>
<%
	}
	else
	{
%>
			<center>
                    <form method="post" action="Add_Event.jsp">
                        <table>
                            <tr>
                                <div class="form-group">
                                    <td align="right"><label class="control-label col-sm-12" for="e_nm">Event ID: &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                    <td>
                                        <div class="col-sm-12">
                                            <input type="text" class="form-control" name="e_nm" disabled>
                                        </div>
                                    </td>
                                    <td><i class="fa fa-tasks" aria-hidden="true"></i></td>
                                </div>
                            </tr>
                        </table>
                        <br> Press to Continue <button type="submit" class="btn-success"> Proceed<i class="fa fa-external-link"></i> </button>
                    </form>
                </center>
 <%
	}
 %>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>

    </html>