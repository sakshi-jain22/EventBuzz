<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.eventBuzz.Genuine.Students" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>EventBuzz</title>
        <link href="//fonts.googleapis.com/css?family=Domine&subset=latin" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Icon Link -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    </head>
    <style type="text/css">
        <jsp:include page="css/bootstrap/css/bootstrap.min.css"/>
        <jsp:include page="css/style1.css"/>
    </style>

    <body>
        <jsp:include page="head.jsp"/>
        <jsp:useBean id="stdao" class="com.eventBuzz.Dao.StudentDao"/>
            <%
		
		session = request.getSession();
		String userType = (String) session.getAttribute("utype");
		String uname = (String) session.getAttribute("uname");
		if(userType.equals("STUDENTS"))
		{
			stdao.setStudent(uname);
			Students student = new Students();
			student = stdao.getStudent();
			
	%>
                <center>
                    <h1 class="animated fadeInDown">
                        <b><u class="heading">Your Profile</u></b>
                    </h1>
                </center>
                <!-- <form class="form-horizontal" action="Update.jsp" method="post"> -->
                <table align="center">
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="eno">College Enrollment No. : &nbsp;&nbsp;&nbsp;&nbsp;</label>
                            </td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="eno" placeholder="Enter the enrollment no." value="<%=(String) student.getEnroll() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-id-badge" aria-hidden="true"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="S_nm">Name : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="S_nm" placeholder="Enter the Name" value="<%= student.getName() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-user-circle" aria-hidden="true"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="U_nm">Unique Username : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="U_nm" placeholder="Enter a username" value="<%= student.username %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-tag" aria-hidden="true"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="email">Email : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="email" placeholder="Enter your Email" value="<%= student.getMail() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-paper-plane" aria-hidden="true"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="password">Password : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="password" class="form-control" name="password" placeholder="Enter the password" value="<%= student.getPassword() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-key" aria-hidden="true"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="C_password">Confirm Password :
						&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="password" class="form-control" name="C_password" placeholder=" Re-enter the Password" value="<%= student.getPassword() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-key" aria-hidden="true"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="P_No">Phone No : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="P_No" placeholder="Enter Phone No" value="<%= student.getPhoneNumber() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-whatsapp" aria-hidden="true"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="Course">Course : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <select name="Course" class="custom-select" disabled>
							<%
							if(student.getCourse() == null)
							{
						%>
							<option value="${null}" disabled selected>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%
							}
							else if(student.getCourse().equals("MBA"))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA" selected>MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%		
							}
							else if(student.getCourse().equals("BCA"))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA" selected>BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%		
							}
							else if(student.getCourse().equals("BBA"))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA" selected>BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%
							}
							else if(student.getCourse().equals("B.Sc."))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc." selected>B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%		
							}
							else if(student.getCourse().equals("B.A."))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A." selected>B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%		
							}
							else if(student.getCourse().equals("B.Com"))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com" selected>B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%		
							}
							else if(student.getCourse().equals("M.Sc."))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc" selected>M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%
							}
							else if(student.getCourse().equals("M.A."))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A." selected>MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%		
							}
							else if(student.getCourse().equals("M.Com"))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com" selected>M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%
							}
							else if(student.getCourse().equals("B.TECH"))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH" selected>B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%
							}
							else if(student.getCourse().equals("M.TECH"))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH" selected>M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%		
							}
							else if(student.getCourse().equals("LLB."))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB." selected>LLB.</option>
							<option value="LLM.">LLM.</option>
							<%
							}
							else if(student.getCourse().equals("LLM."))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM." selected>LLM.</option>
							<%
							}
							else if(student.getCourse().equals("MCA"))
							{
						%>
							<option value="${null}" disabled>---Select Course---</option>
							<option value="MCA" selected>MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
							<%
							}
							else
							{
						%>
							<option value="${null}" selected disabled>---Select Course---</option>
							<option value="MCA">MCA</option>
							<option value="MBA">MBA</option>
							<option value="BCA">BCA</option>
							<option value="BBA">BBA</option>
							<option value="B.Sc.">B.Sc.</option>
							<option value="B.A.">B.A.</option>
							<option value="B.Com">B.Com</option>
							<option value="M.Sc">M.sc</option>
							<option value="M.A.">MA</option>
							<option value="M.Com">M.Com</option>
							<option value="B.TECH">B.TECH</option>
							<option value="M.TECH">M.TECH</option>
							<option value="LLB.">LLB.</option>
							<option value="LLM.">LLM.</option>
						<%
							}
						%>
						</select>
                                </div>
                            </td>
                            <td><i class="fa fa-graduation-cap" aria-hidden="true"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="C_name">College Name : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="C_name" placeholder="Enter CollegeName" value="<%= student.getClg() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-university" aria-hidden="true"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="Year">Enter Year : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <select class="custom-select" name="Year" disabled>
							<% 
							if(student.getYear() == 1)
							{
						%>
							<option value="${null}">---Select Year---</option>
							<option value="1" selected>First</option>
							<option value="2">Second</option>
							<option value="3">Third</option>
							<option value="4">Fourth</option>
							<option value="5">Fifth</option>
							<%
							}
							else if(student.getYear() == 2)
							{
						%>
							<option value="${null}">---Select Year---</option>
							<option value="1">First</option>
							<option value="2" selected>Second</option>
							<option value="3">Third</option>
							<option value="4">Fourth</option>
							<option value="5">Fifth</option>
							<%		
							}
							else if(student.getYear() == 3)
							{
						%>
							<option value="${null}">---Select Year---</option>
							<option value="1">First</option>
							<option value="2">Second</option>
							<option value="3" selected>Third</option>
							<option value="4">Fourth</option>
							<option value="5">Fifth</option>
							<%		
							}
							else if(student.getYear() == 4)
							{
						%>
							<option value="${null}">---Select Year---</option>
							<option value="1">First</option>
							<option value="2">Second</option>
							<option value="3">Third</option>
							<option value="4" selected>Fourth</option>
							<option value="5">Fifth</option>
							<% 		
							}
							else if(student.getYear() == 5)
							{
						%>
							<option value="${null}">---Select Year---</option>
							<option value="1">First</option>
							<option value="2">Second</option>
							<option value="3">Third</option>
							<option value="4">Fourth</option>
							<option value="5" selected>Fifth</option>
							<%	
							}
							else
							{
						%>
							<option value="${null}" selected>---Select Year---</option>
							<option value="1">First</option>
							<option value="2">Second</option>
							<option value="3">Third</option>
							<option value="4">Fourth</option>
							<option value="5">Fifth</option>
							<%		
							}
						%>
						</select>
                                </div>
                            </td>
                            <td><i class="fa fa-hourglass-half" aria-hidden="true"></i></td>
                        </div>
                    </tr>

                    <tr>
                        <div class="form-group">
                            <td colspan=2 align="center">
                                <form action="Update.jsp" method="post">
                                    <div class="col-sm-12">
                                        <button type="submit" class="btn-success">&nbsp;Update&nbsp;</button> &nbsp;&nbsp;
                                    </div>
                                </form>
                            </td>
                        </div>
                    </tr>
                </table>
                <%
		}
		else
		{
			out.write("<script type='text/javascript'>alert('Page not accessible')</script>");
			session.setAttribute("error", "Page access not allowed....");	
			response.sendRedirect("errorlog.jsp");
		}
		
	%>

    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>

    </html>