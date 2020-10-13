<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.eventBuzz.Dao.View_collegesDao" %>
    <%@ page import="com.eventBuzz.Genuine.FestOrganizer" %>
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
			<b><u class="heading">view colleges</u></b>
		</h1>
	</center>
	<br>


 <%
	
	View_collegesDao obj = new View_collegesDao();
	obj.fest();
	int len = obj.getRowCount();
	FestOrganizer colleges[] = new FestOrganizer[len];
	for(int i=0; i<len; i++)
	{
		colleges[i] = obj.organizers[i];
	}
	
	
	if(len>0)
	{
	
	%>
	
	<table border="2" class="table table-bordered table-striped" id="tid">
		<thead class="thead-dark">
			<tr>
			<th scope="col">S.No.</th>
			<th scope="col">Username</th>
			<th scope="col">College Name</th>
			<th scope="col">University</th>
			<th scope="col">Street Address</th>
			<th scope="col">Locality</th>
			<th scope="col">City</th>
			<th scope="col">State</th>
			<th scope="col">Pin Code</th>
			<th scope="col">Nearest Metro</th>
			<th scope="col">Email</th>
			<th scope="col">Website</th>
			<th scope="col">Phn. No.</th>
			<th scope="col">Button</th>
			</tr>
			</thead>
			
			<tbody>
			
			<%
			for(int i=0; i<len; i++)
			{
				out.write("<form action='Deactivate' method='POST'>");
				out.write("<tr>");
				out.write("<input type='hidden' name='cid' value='" + colleges[i].username + "'>");
				out.write("<th scope='row'>" + (i+1) + "</th>");
				out.write("<td>" + colleges[i].username + "</td>");
				out.write("<td>" + colleges[i].getCollegeName() + "</td>");
				out.write("<td>" + colleges[i].getUniversity() + "</td>");			
				out.write("<td>" + colleges[i].getStreetAddr() + "</td>");
				out.write("<td>" + colleges[i].getLocality() + "</td>");
				out.write("<td>" + colleges[i].getCity() + "</td>");
				out.write("<td>" + colleges[i].getState() + "</td>");
				out.write("<td>" + colleges[i].getPinCode() + "</td>");
				out.write("<td>" + colleges[i].getNearestMetro() + "</td>");
				out.write("<td>" + colleges[i].getCollegeEmail() + "</td>");
				out.write("<td><a href='#'>" + colleges[i].getCollegeWebsite() + "</a></td>");
				out.write("<td>" + colleges[i].getCollegePhnNo() + "</td>");
				
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
	<center><strong class="animated flash delay-2s"> No View Colleges till now... </strong></center>
<%
	}
%>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>