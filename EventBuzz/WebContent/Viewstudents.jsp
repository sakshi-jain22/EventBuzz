<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.eventBuzz.Dao.ViewStudentsDao" %>
<%@ page import="com.eventBuzz.Genuine.Students" %>
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
			<b><u class="heading">view Students</u></b>
		</h1>
	</center>
	<br>
	
	
	<%
	
	ViewStudentsDao obj = new ViewStudentsDao();
	obj.student();
	
	int len = obj.getTotalStudents().length;
	Students[] students = obj.getTotalStudents();
	len = students.length;
	
	if(len>0)
	{
	
	%>
	
	<table border="2" class="table table-bordered table-striped" id="tid">
		
		<thead class="thead-dark">
			<tr>
			<th scope="col">S.No.</th>
			<th scope="col">Enrollment No.</th>
			<th scope="col">Student Name</th>
			<th scope="col">Username</th>
			<th scope="col">E-mail ID</th>
			<th scope="col">Contact No.</th>
			<th scope="col">Course</th>
			<th scope="col">College</th>
			<th scope="col">Year</th>
			<th scope="col">Button</th>
			</tr>
			</thead>
			
			<tbody>
			
			<%
			for(int i=0; i<len; i++)
			{
				out.write("<form action='Deactive' method='POST'>");
				out.write("<tr>");
				out.write("<input type='hidden' name='sid' value='" + students[i].getEnroll() + "'>");
				out.write("<th scope='row'>" + (i+1) + ".</th>");
				out.write("<td>" + students[i].getEnroll() + ".</td>");
				out.write("<td>" + students[i].getName() + "</td>");
				out.write("<td>" + students[i].username + "</td>");			
				out.write("<td>" + students[i].getMail() + "</td>");
				out.write("<td>" + students[i].getPhoneNumber() + "</td>");
				out.write("<td>" + students[i].getCourse() + "</td>");
				out.write("<td>" + students[i].getClg() + "</td>");
				out.write("<td>" + students[i].getYear() + "</td>");
				
				out.write("<th scope='row'>&nbsp; <button type='submit' class='btn btn-warning'> Deactivate </button> &nbsp; </th>");
				out.write("</tr>");
				out.write("</form>");
			}
		%>


	
			
			</tbody>
		</table>
	
<%
	}
	else
	{
%>
	<center><strong class="animated flash delay-2s"> No students are added till now... </strong></center>
<%
	}
%>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
</body>
</html>