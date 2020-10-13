<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.eventBuzz.Dao.EventsArrayDao" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>EventBuzz</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
            <link rel="stylesheet" href="css\style1.css">
            <!-- Icon Link -->
            <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        </head>

        <body>
            <jsp:include page="head.jsp" />
            <%
    session = request.getSession();
    String usertype = (String) session.getAttribute("utype");
            
	EventsArrayDao eventobj = new EventsArrayDao();
	eventobj.EventIDrows();
	final int num = eventobj.eid.length;
	int eid[] = eventobj.eid;
	String names[] = eventobj.EventName_rows();
	String dt[] = eventobj.EventDate_rows();
	String clock[] = eventobj.EventTime_rows();
	String venue[] = eventobj.EventVenue_rows();
	int[] team_size = eventobj.teamSize_rows();
	double[] fees = eventobj.ParticipationFees_rows();
	String[] payment = eventobj.EventPayment_rows();
	String posters[] = eventobj.EventPosters_rows();
	String colleges[] = eventobj.EventClgs_rows();
	eventobj.getCon().close();
	
	if(num>0)
	{
		String val = request.getParameter("eventName");
%>
			<form action="search.jsp" method="post"><br>
			<div class="d-flex justify-content-end">
			  <div class="form-row align-items-center">
			    <div class="col-auto">
			      <label class="sr-only" for="searchBar">SearchBar</label>
			      <div class="input-group mb-2">
			        <div class="input-group-prepend">
			          <div class="input-group-text">&#x1F50D;</div>
			        </div>
			        <input type="text" class="form-control" name="eventName" id="searchBar" placeholder="Search here..." value=<%= val %>>
			      </div>
			    </div>
			    <div class="col-auto">
			      <button type="submit" class="btn btn-primary">Search</button>
			    </div>
			  </div>
			  </div>
			</form>

                <center>
                    <h1 class="animated fadeInDown"><u class="heading">Events</u></h1>
                </center>
                <table border="2" class="table table-bordered table-striped" id="tid">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col" align="center">S.No.</th>
                            <th scope="col" align="center">Event Name</th>
                            <th scope="col" align="center">College Name</th>
                            <th scope="col" align="center">Date</th>
                            <th scope="col" align="center">Time</th>
                            <th scope="col" align="center">Venue</th>
                            <th scope="col" align="center">Max. Team Size</th>
                            <th scope="col" align="center">Participation Fees</th>
                            <th scope="col" align="center">Payment Link</th>
                            <th scope="col" align="center">Event Posters</th>
                            <th scope="col" colspan="2" align="center">Operation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
			for(int i=0; i<num; i++)
			{
				if(names[i].equalsIgnoreCase(val))
				{
					
					out.write("<form action='event.jsp' method='GET'>");
					out.write("<tr>");
					out.write("<input type='hidden' name='eid' value='" + eid[i] + "'>");
					out.write("<th scope='row'>" + (i+1) + "</th>");
					out.write("<td>" + names[i] + "</td>");
					out.write("<td>" + colleges[i] + "</td>");			
					out.write("<td>" + dt[i] + "</td>");
					out.write("<td>" + clock[i] + "</td>");
					out.write("<td>" + venue[i] + "</td>");
					out.write("<td align='center'>" + team_size[i] + "</td>");
					out.write("<td>&nbsp; &#8377; " + fees[i] + "</td>");
					if(payment[i] != null)
						out.write("<td>&nbsp; <a href='"+ payment[i] +"' >" + payment[i] + "</a> &nbsp; </td>");
					else
						out.write("<td></td>");
					
					if(posters[i] == null)
					{
						out.write("<th scope='row'>");
						out.write("<center><img class='img-thumbnail' src='img/posterUpload/null.png' alt='No Poster' title='No Poster'></center>");
						out.write("</th>");
					}
					else
					{
						out.write("<td class='img-wrapper'>");
						out.write("<a href='img/posterUpload/" + posters[i] + "' title=''>");
						out.write("<img class='img-fluid img-thumbnail' src='img/posterUpload/" + posters[i] + "' alt='" + posters[i] + "' width='35%' height='auto' title='Event Poster'>");
						out.write("</a>");
						out.write("</td>");
					}
					
					out.write("<th scope='row'>&nbsp; <button type='submit' class='btn btn-primary'> View </button> &nbsp; </th>");
					if(usertype.equals("STUDENTS"))
						out.write("<th scope='row'>&nbsp; <button type='submit' class='btn btn-success' formaction='registerEvent.jsp'> Register </button> &nbsp; </th>");
					out.write("</tr>");
					out.write("</form>");
				}
			}
		%>
                    </tbody>
                </table>
        <%
	}
%>

                    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
                    <script src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
                    <script src="js/magnific.js"></script>
        </body>

        </html>