<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.eventBuzz.Dao.StudentDao" %>
    <%@ page import="com.eventBuzz.Dao.RetrieveEventDao" %>
    <%@ page import="com.eventBuzz.Dao.CheckRegisteredDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//fonts.googleapis.com/css?family=Domine&subset=latin" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Icon Link -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<title>EventBuzz</title>
</head>
<style type="text/css">
	<jsp:include page="css/style1.css" />
</style>
<body>
	<jsp:include page="head.jsp"/>
	<center>
		<h1 class="animated pulse">
			<b><u class="heading">Register Event</u></b>
		</h1>
	</center>
<%
	StudentDao stdao = new StudentDao();
	RetrieveEventDao evedao = new RetrieveEventDao();
	
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
	session = request.getSession();
	String userType = (String) session.getAttribute("utype");
	String uname = (String) session.getAttribute("uname");
	
	String eveID = request.getParameter("eid");
	int eid = Integer.parseInt(eveID);
	
	if((userType == null || uname == null))
	{
		out.write("<script>test();</script>");	
		request.getRequestDispatcher("Login.jsp").include(request,response);
	}
	if(userType.equals("STUDENTS") && (uname != null))
	{
		stdao.setStudent(uname);
		evedao.setEventID(eid);
		evedao.setEventData();
		
		String sid = stdao.getStudent().getEnroll();
		CheckRegisteredDao reg = new CheckRegisteredDao();
	
		if(!reg.validate(sid, eid))
		{
			session.setAttribute("registrationID", 0);
			session.setAttribute("EventId", eid + "");
			session.setAttribute("Enroll", sid);
			response.sendRedirect("viewRegID.jsp");
		}
%>	
		<form class="form-horizontal" action="Register_Event" method="post" enctype="multipart/form-data">
			<input type="hidden" name="eid" value="<%= evedao.getEventID() %>" >
			<input type="hidden" name="enroll" value="<%= sid %>" >
			<input type="hidden" name="c_id" value="<%= evedao.getCid() %>" >
			<table align="center" class="form-table animated zoomIn" >
				<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="e_nm">Event Name: &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12" >
								<input type="text" class="form-control" name="e_nm" value="<%= evedao.getEventName() %>" disabled>
							</div>
						</td>
						<td>
							<i class="fa fa-tasks" ></i>
						</td>
					</div>
				</tr>
				<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="date">Date: &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12" >
								<input type="date" class="form-control" name="date" value="<%= evedao.getEventDate() %>" disabled>
							</div>
						</td>
						<td>
							<i class="fa fa-calendar-check-o" ></i>
						</td>
					</div>
				</tr>
				<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="time">Time: &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12" >
								<input type="text" class="form-control" name="time" value="<%= evedao.getEtime() %>" disabled>
							</div>
						</td>
						<td>
							<i class="fa fa-clock-o" ></i>
						</td>
					</div>
				</tr>
				<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="venue">Venue: &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12" >
								<input type="text" class="form-control" name="venue" value="<%= evedao.getVenue() %>" disabled>
							</div>
						</td>
						<td>
							<i class="fa fa-building" ></i>
						</td>
					</div>
				</tr>
				<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="fees">Participation Fees: &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12" >
								<input type="text" class="form-control" name="fees" value="<%= evedao.getFees() %>" disabled>
							</div>
						</td>
						<td>
							<i class="fa fa-inr" ></i>
						</td>
					</div>
				</tr>
				<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="p_link">Payment Link: &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12" >
							<%
								if(evedao.getPaymentLink() == null)
								{
							%>
									<del> <a name="p_link" href="#" ><%= evedao.getPaymentLink() %></a></del>
							<%
								}
								else
								{
							%>
								<a name="p_link" href="../https://<%= evedao.getPaymentLink() %>" ><%= evedao.getPaymentLink() %></a>
							<%
								}
							%>
							</div>
						</td>
						<td>
							<i class="fa fa-link" ></i>
						</td>
					</div>
				</tr>
				<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="mnum" >Your Team Size : &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12">
								<input type="number" class="form-control" name="mnum" min="1" tmax="50" placeholder="Enter the no. of team-mates">
							</div>
						</td>
						<td>
							<i class="fa fa-users"></i>
						</td>
					</div>
				</tr>
				<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="mid" >Registered Memeber ID : &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12">
								<input type="text" class="form-control" name="mid" placeholder="Enter the memeber ID (if any)">
							</div>
						</td>
						<td>
							<i class="fa fa-user-plus"></i>
						</td>
					</div>
				</tr>
				<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="i_upload" >Payment Screenshot Upload : &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12">
								<input type="file" class="form-control-file border" name="i_upload">
							</div>
						</td>
						<td>
							<i class="fa fa-picture-o"></i>
						</td>
					</div>
				</tr>
				<tr>
					<div class="form-group">
						<td align="right">
							<label class="control-label col-sm-12" for="uploadSS" >Are you submitting a screenshot? : &nbsp;&nbsp;&nbsp;&nbsp;</label>
						</td>
						<td>
							<div class="col-sm-12">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input" id="customRadio1" name="uploadSS" value="True">
									<label class="custom-control-label" for="customRadio1" >Yes </label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input" id="customRadio2" name="uploadSS" value="False">
									<label class="custom-control-label" for="customRadio2" >No </label>
								</div>
							</div>
						</td>
						<td>
							<i class="fa fa-check-circle"></i>
						</td>
					</div>
				</tr>
				<tr>
					<td align="center" colspan='2'>
						<input type="submit" class="btn-info" value="Register">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="reset" class="btn-danger" value="Cancel">
					</td>
				</tr>
			</table>
		</form>
		
		<center>
			<strong><u>Note:-</u> Upload the payment screenshot (if needed) to register and wait for a confirmation mail from the respective college.</strong>
		</center>
<%
	}
	stdao.getCon().close();
	evedao.getCon().close();
%>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script>
    	function test() {
    	    alert("Page not accessible....Retry login as student");
    	}
    </script>
    	}
</body>
</html>