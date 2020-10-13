<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.eventBuzz.Dao.StudentRegDao" %>
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
	
	<section id="alertmsg">
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-12">
					<div id="box" onmouseenter='Alertclear()'></div>
				</div>
			</div>
		</div>
	</section>
	<br>
	<center>
		<h1 class="animated pulse">
			<b><u class="heading">Registered events</u></b>
		</h1>
	</center>
	<br>
<%
	session = request.getSession();
	String uname = (String) session.getAttribute("uname");
	
	StudentRegDao obj = new StudentRegDao();
	obj.RegistrationIDrows(uname);
	int rid[] = obj.id;
	int len = obj.row_num;
	int[] tm = obj.teamMates_rows(uname);
	String[] ename = obj.EventName();
	String[] university = obj.EUni();
	String[] clg = obj.EClg();
	String[] eDate = obj.Edate();
	String etime[] = obj.Etime();
	obj.getCon().close();
	
	if(len>0)
	{
%>
	<table border="2" class="table table-bordered table-striped" id="tid">
		<thead class="thead-dark">
			<tr>
			<th scope="col">S.No.</th>
			<th scope="col">Reg. ID</th>
			<th scope="col">Event Name</th>
			<th scope="col">College Name</th>
			<th scope="col">University</th>
			<th scope="col">Date</th>
			<th scope="col">Time</th>
			<th scope="col">Total Team Members</th>
			<th scope="col">Operation</th>
			</tr>
			</thead>
			<tbody>
	<%
			for(int i=0; i<len; i++)
			{
				out.write("<form action='cancel' method='GET'>");
				out.write("<tr>");
				out.write("<input type='hidden' name='rid' value='" + rid[i] + "'>");
				out.write("<th scope='row'>" + (i+1) + "</th>");
				out.write("<td>" + rid[i] + "</td>");
				out.write("<td>" + ename[i] + "</td>");
				out.write("<td>" + clg[i] + "</td>");			
				out.write("<td>" + university[i] + "</td>");
				out.write("<td>" + eDate[i] + "</td>");
				out.write("<td>" + etime[i] + "</td>");
				out.write("<td align='center'>" + tm[i] + "</td>");
				out.write("<th scope='row'>&nbsp; <button type='submit' class='btn btn-warning' onmouseenter='alertbox()'> Cancel Registration </button> &nbsp; </th>");
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
	<center><strong class="animated flash delay-2s"> No Registered Events till now... </strong></center>
<%
	}
%>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js\script.js"></script>
</body>
</html>