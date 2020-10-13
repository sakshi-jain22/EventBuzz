<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.eventBuzz.Dao.StudentDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//fonts.googleapis.com/css?family=Domine&subset=latin"	rel="stylesheet" type="text/css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css\style1.css">
<title>EventBuzz</title>
<!-- Icon Link -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>
<body>
	<jsp:include page="head.jsp"/>
	<br>
	<center>
		<h1 class="animated pulse">
			<b><u class="heading">Registration slip</u></b>
		</h1>
	</center>
	<br>
	<%
	session = request.getSession();
	int regID = (int) session.getAttribute("registrationID");
	String eveID = (String) session.getAttribute("EventId");
	String enroll = (String) session.getAttribute("Enroll");
//	int teamSize = (int) request.getAttribute("team");
	if(regID != -1 && regID != 0)
	{
		out.write("<script> alert('Event Registered.'); </script>");
	}
	if(regID == -1)
	{
		out.write("<script> alert('OOps! Event Not Registered.... \n May be changing filename could help'); </script>");
	}
	if(regID == 0)
		out.write("<script> alert('Event Already Registered.'); </script>");
	if(regID > 0)
	{
		session = request.getSession();
		String uname = (String) session.getAttribute("uname");
		StudentDao stObj = new StudentDao();
		stObj.setStudent(uname);
	%>
		<center>
			<form action="viewEvents.jsp" method="post">
				<table>
					<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="r_nm">Registration ID: &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12">
                            	<input type="text" class="form-control" name="r_nm" value="<%= regID %>" disabled>
                            </div>
						</td>
						<td>
							<i class="fa fa-handshake-o"></i>
						</td>
					</div>
					</tr>
					<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="eid">Event ID: &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12">
                            	<input type="text" class="form-control" name="eid" value="<%= eveID %>" disabled>
                            </div>
						</td>
						<td>
							<i class="fa fa-check-square-o"></i>
						</td>
					</div>
					</tr>
					<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="roll">Student ID: &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12">
                            	<input type="text" class="form-control" name="roll" value="<%= enroll %>" disabled>
                            </div>
						</td>
						<td>
							<i class="fa fa-certificate"></i>
						</td>
					</div>
					</tr>
					<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="snm">Student Name: &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12">
                            	<input type="text" class="form-control" name="snm" value="<%= stObj.getStudent().getName() %>" disabled>
                            </div>
						</td>
						<td>
							<i class="fa fa-print"></i>
						</td>
					</div>
					</tr>
				</table>
				<br> Press to Continue <button type="submit" class="btn-success"> Proceed </button>
			</form>
		</center>
	
	<%
	}
	else
	{
	%>
		<center>
			<table>
				<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="eid">Event ID: &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12">
                            	<input type="text" class="form-control" name="eid" value="<%= eveID %>" disabled>
                            </div>
						</td>
						<td>
							<i style="color: red;" class="fa fa-times"></i>
						</td>
					</div>
					</tr>
			</table>
			<form action="viewEvents.jsp" method="post">
				<br> Press to Continue <button type="submit" class="btn-success"> Proceed </button>
			</form>
			<br>
			<font color="red"><b> Registration failed! </b></font>
		</center>
		
	<%
	}
	session.removeAttribute("registrationID");
	session.removeAttribute("EventId");
	session.removeAttribute("Enroll");
	%>
	
	<center>
	<br><br>
	<b>Take a screenshot</b>
	<br>
	<p><b><u>Note:-</u></b> Do not refresh the page </p>
	</center>
	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>