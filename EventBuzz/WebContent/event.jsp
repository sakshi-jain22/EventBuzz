<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.eventBuzz.Dao.RetrieveEventDao" %>
<%@ page import = "com.eventBuzz.Dao.OrganiserDao" %>
<%@ page import = "com.eventBuzz.Genuine.ConvertMonth" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
<link rel="stylesheet" href="css\style1.css">
<link rel="stylesheet" href="css\style3.css">
<title>EventBuzz</title>
<!-- Icon Link -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>
<body>
	<jsp:include page="head.jsp"/>
	<%
		int eid = Integer.parseInt(request.getParameter("eid"));
		RetrieveEventDao obj1 = new RetrieveEventDao();
		obj1.setEventID(eid);
		obj1.setEventData();
		OrganiserDao obj2 = new OrganiserDao(eid);
		String ename = obj1.getEventName();
		String edate = obj1.getEventDate();
		String etime = obj1.getEtime();
		String venue = obj1.getVenue();
		double fees = obj1.getFees();
		String pay = obj1.getPaymentLink();
		int size = obj1.getTeamSize();
		String poster = obj1.getPosterName();
		String clg = obj1.getClg();
		String university = obj2.getUniversity();
		String clgAddr = obj2.getAddr();
		int pin_code = obj2.getPincode();
		String metro = obj2.getMetro();
		String mailID = obj2.getEmail();
		String website = obj2.getWebsite();
		long contactNo = obj2.getPhnNo();
		
		
		String temp = edate;
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(temp);
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int day = cal.get(Calendar.DAY_OF_MONTH);
		int month = cal.get(Calendar.MONTH);
		int year = cal.get(Calendar.YEAR);
		int weekday = cal.get(Calendar.DAY_OF_WEEK);
		
		ConvertMonth dateName = new ConvertMonth();
		String mon = dateName.monthToString(month);
		String dayName = dateName.convertWeekName(weekday);
	%>
	<section id="event">
	<div class="content-box">
        <div class="content-title wow zoomIn" data-wow-duration="3s" data-wow-delay=".5s">
            <h3>Event Details</h3>
            <div class="content-title-underline"></div>
        </div>
	<div class="container-fluid">
		<div class="row">
				<div class="col-md-2">
				<div class="items">
				<div id="day">
				<h2><strong><%= day %></strong></h2>
				<%= mon %> <br>
				</div>
				</div>
			</div>
				<div class="col-md-6">
					<h3><u><%= ename %></u></h3>
					<p class="para"><%= dayName %>, <%= day %>-<%= mon %>-<%= year %></p>
					Starts at: &nbsp;<%= etime %> <br/>
					<b>College Name: </b><%= clg %> of <%= university %> <br/>
					<b>Located at: </b><%= clgAddr %>-<%= pin_code %> <br>
					<b>Nearest Metro Station: </b><%= metro %> 
				</div>
				<div class="col-md-4">
				<div class="wrapper">
					<a href="img/posterUpload/<%= poster %>">
					<img class="img-fluid" src="img/posterUpload/<%= poster %>" alt="Event Poster" title="<%= ename %>">
					</a>
				</div>
				</div>
			
				<div class="col-lg-3">
					<b>Venue: </b><%= venue %> inside college
				</div>
				<div class="col-lg-3">
					<p class="para">
					<b>Max. Team Members: </b><%= size %>
					<br><b>Participation</b> @&#8377;<%= fees %>/head
					<br>
					<b>Payment Via: </b><a href="<%= pay %>"><%= pay %></a>
					</p>
				</div>
				<div class="col-lg-3" id="align">
				<b><u>Contact Info:-</u></b>
					<p class="para">
					<b>Email ID: </b><a href="mailto:<%= mailID %>"><%= mailID %></a> <br>
					<b>Contact No.: </b><%= contactNo %> <br>
					<b>Website: </b><a href="<%= website %>"><%= website %></a><br>
					</p>
				</div>
				<div class="col-lg-3"><br>
				<a href="registerEvent.jsp?eid=<%= eid %>" role="button">
					<input type="button" class="btn btn-info" value=" Register ">
				</a>
				</div>
			</div>
		</div>
	</div>
	</section>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
    <script src="js/custom.js"></script>
</body>
</html>