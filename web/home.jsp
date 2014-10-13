<%--
Document : index
Created on : Nov 5, 2012, 6:06:23 PM
Author	 : mano
--%>

<%@page import="java.util.List"%>
<%@page import="org.app.service.LoginService"%>
<%@page import="java.util.Date"%>
<%@page import="org.app.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 <link rel="stylesheet" type="text/css" href="style.css"/>
	 <title>Home Page</title>	
</head>
<body>
<center>
	 <div id="mystyle">
		 <h1>Java, C++, J2EE, Tutorial</h1>
		 <p><a href="http://www.forum.codecall.net">http://www.forum.codecall.net</a><br/>
			 <b>Integrating JSP, Hibernate in an MVC Application</b><br/>
			 <%=new Date()%></br>
			 <%
				 User user = (User) session.getAttribute("user");
			 %>		
			 <b>Welcome <%= user.getFirstName() + " " + user.getLastName()%></b>		
			 <br/>
			 <a href="logout.jsp">Logout</a>
		 </p>

		 <table>
			 <thead>
				 <tr>
					 <th>User ID</th>
					 <th>First Name</th>
					 <th>Middle Name</th>
					 <th>Last Name</th>
					 <th>email</th>					
				 </tr>
			 </thead>
			 <tbody>
				 <%
					 LoginService loginService = new LoginService();
					 List<User> list = loginService.getListOfUsers();
					 for (User u : list) {
				 %>
				 <tr>
					 <td><%=u.getUserId()%></td>
					 <td><%=u.getFirstName()%></td>
					 <td><%=u.getMiddleName()%></td>
					 <td><%=u.getLastName()%></td>
					 <td><%=u.getEmail()%></td>
				 </tr>
				 <%}%>
			 <tbody>
		 </table>		
		 <br/>
	 </div>

</center>		
</body>
</html>