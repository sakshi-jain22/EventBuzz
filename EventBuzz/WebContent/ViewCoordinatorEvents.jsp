<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.eventBuzz.Dao.OrganiserEventDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EventBuzz</title>
<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
<link rel="stylesheet" href="css\style1.css">
<!-- Icon Link -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>
<body>

<jsp:include page="head.jsp"/>


<%
session = request.getSession();
String CoId = (String)session.getAttribute("uname");

OrganiserEventDao orgobj = new OrganiserEventDao();
orgobj.EventIDrows(CoId);

final int num = orgobj.id.length;
int eid[] = orgobj.id;
String names[] = orgobj.EventName_rows(CoId);
String dt[] = orgobj.EventDate_rows(CoId);
String clock[] = orgobj.EventTime_rows(CoId);
String venue[] = orgobj.EventVenue_rows(CoId);
int[] team_size = orgobj.eTeamSize_rows(CoId);
double[] fees = orgobj.partFees_rows(CoId);
String[] payment = orgobj.paymentLink_rows(CoId);
String posters[] = orgobj.posterNames_rows(CoId);
orgobj.getCon().close();

if(num>0)
{
%>

<center><h1><u class="heading">Events</u></h1></center>
		<table border="2" class="table table-bordered table-striped" id="tid">
		<thead>
			<tr>
			<th scope="col" bgcolor="#CECECE" align="center">S.No.</th>
			<th scope="col" bgcolor="#CECECE" align="center">Event Name</th>
			<th scope="col" bgcolor="#CECECE" align="center">Date</th>
			<th scope="col" bgcolor="#CECECE" align="center">Time</th>
			<th scope="col" bgcolor="#CECECE" align="center">Venue</th>
			<th scope="col" bgcolor="#CECECE" align="center">Max. Team Size</th>
			<th scope="col" bgcolor="#CECECE" align="center">Participation Fees</th>
			<th scope="col" bgcolor="#CECECE" align="center">Payment Link</th>
			<th scope="col" bgcolor="#CECECE" align="center">Event Posters</th>
			<th scope="col" colspan="3" bgcolor="#CECECE" align="center">Operation</th>
			</tr>
			</thead>
			<tbody>
			<%
			for(int i=0; i<num; i++)
			{
				out.write("<form action='UpdateEvent' method='POST'>");
				out.write("<tr>");
				out.write("<input type='hidden' name='eid' value='" + eid[i] + "'>");
				out.write("<th scope='row'>" + (i+1) + "</th>");
				out.write("<td>" + names[i] + "</td>");		
				out.write("<td>" + dt[i] + "</td>");
				out.write("<td>" + clock[i] + "</td>");
				out.write("<td>" + venue[i] + "</td>");
				out.write("<td align='center'>" + team_size[i] + "</td>");
				out.write("<td>&nbsp; &#8377; " + fees[i] + "</td>");
				out.write("<td>&nbsp; <a href='"+ payment[i] +"' >" + payment[i] + "</a> &nbsp; </td>");
				out.write("<td class='img-wrapper'>");
				out.write("<a href='img/posterUpload/" + posters[i] + "' title=''>");
				out.write("<img class='img-fluid img-thumbnail' src='img/posterUpload/" + posters[i] + "' alt='" + posters[i] + "' width='35%' height='auto' title='Event Poster'>");
				out.write("</a>");
				out.write("</td>");
				out.write("<td><br>&nbsp; <button type='submit' class='btn btn-primary'>Update </button> &nbsp; </td>");
				out.write("<td><br>&nbsp; <button type='submit' class='btn btn-danger' formaction='Delete_event' method='post'> Delete </button> &nbsp; </td>");
				out.write("<td><br>&nbsp; <button type='submit' class='btn btn-success' formaction='view_registrations.jsp' method='post'> View Registrations </button> &nbsp; </td>");
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
		<br><center> <h3> <b class="animated jackInTheBox"> No Events added till now! Try adding on some events!... </b></h3></center>
<%
	}
%>

	<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
	<script src="js/magnific.js"></script>

</body>
</html>