<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.eventBuzz.Dao.View_regDao" %>
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
String event_id = request.getParameter("eid");

View_regDao view_obj = new View_regDao();
view_obj.RegistrationIDrows(event_id);

int RegID[] = view_obj.id;
int num = RegID.length;
String PaymentSS[] = view_obj.PaymentSS_rows(event_id);
int[] memberID = view_obj.MemberID_rows(event_id);
String stu_names[] = view_obj.sname_rows(event_id);
String stu_mail[] = view_obj.stumail_rows(event_id);
int[] team_mates = view_obj.teamMates_rows(event_id);
int[] stu_year = view_obj.studentyear_rows(event_id);
String[] sphno = view_obj.sphoneno_rows(event_id);
String scollege[] = view_obj.scollege_rows(event_id);
view_obj.getCon().close();

if(num>0)
{
%>

<center><h1><u class="heading animated zoomInDown">Registrations</u></h1></center>
		<table border="2" class="table table-bordered table-striped" id="tid">
		<thead>
			<tr>
			<th scope="col" bgcolor="#CECECE" align="center">S.No.</th>
			<th scope="col" bgcolor="#CECECE" align="center">Registration ID</th>
			<th scope="col" bgcolor="#CECECE" align="center">Student Name</th>
			<th scope="col" bgcolor="#CECECE" align="center">Member ID</th>
			<th scope="col" bgcolor="#CECECE" align="center">Team Mates</th>
			<th scope="col" bgcolor="#CECECE" align="center">College</th>
			<th scope="col" bgcolor="#CECECE" align="center">Mail</th>
			<th scope="col" bgcolor="#CECECE" align="center">Phone No</th>
			<th scope="col" bgcolor="#CECECE" align="center">Payment</th>
			</tr>
			</thead>
			<tbody>
			<%
			for(int i=0; i<num; i++)
			{
				out.write("<tr>");
				out.write("<input type='hidden' name='Reg_id' value='" + RegID[i] + "'>");
				out.write("<th scope='row'>" + (i+1) + "</th>");
				out.write("<td align='center'>" + RegID[i] + "</td>");	
				out.write("<td align='center'>" + stu_names[i] + "</td>");		
				out.write("<td align='center'>" + memberID[i] + "</td>");		
				out.write("<td align='center'>" + team_mates[i] + "</td>");
				out.write("<td align='center'>" + scollege[i] + "</td>");
				out.write("<td align='center'>" + stu_mail[i] + "</td>");
				out.write("<td align='center'>" + sphno[i] + "</td>");
				//out.write("<td>&nbsp; &#8377; " + PaymentSS[i] + "</td>");
				//out.write("<td>&nbsp; <a href='"+ PaymentSS[i] +"' >" + PaymentSS[i] + "</a> &nbsp; </td>");
				
				if(PaymentSS[i] == null)
				{
					out.write("<td>");
					out.write("<img class='img-thumbnail' src='img/screenshots/null.png' alt='No Payment' title='No Payment'>");
				}
				else
				{
					out.write("<td class='img-wrapper'>");
					out.write("<a href='img/screenshots/" + PaymentSS[i] + "' title=''>");
					out.write("<img class='img-fluid img-thumbnail' src='img/screenshots/" + PaymentSS[i] + "' alt='" + PaymentSS[i] + "' width='35%' height='auto' title='Event Poster'>");
					out.write("</a>");
				}
				out.write("</td>");
				 out.write("</tr>");
			}
			
		%>
		</tbody>
		</table>
<%
}
else	
{

%>



<center> <h2> <b class="animated jackInTheBox"> Sorry! No registrations. </b></h2></center>

<%
}
%>


	<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
	<script src="js/magnific.js"></script>



</body>
</html>