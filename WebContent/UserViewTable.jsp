<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%@page import="com.AreaSearch"%>
<%@page import="java.util.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="UserViewServlet" class="register-form" id="register-form">
		<input type="hidden" id="bname" value="<%= request.getAttribute("bank_name")%>">
		<input type="hidden" id="bid" value="<%= request.getAttribute("bank_id")%>">
	</form>
							
	<table border='1' width='800' align='center'>
				<tr>
				    <th>Bank Name</th>
				    <th>Find</th>
				</tr>
				<% ArrayList<String> obj= (ArrayList<String>)request.getAttribute("data");
				for(int i=0;i<obj.size();i++){%>
				<tr>
				<td><%=obj.get(i) %></td>
				<td><a href="UserViewServlet">View</a></td>
				</tr>
				<%} %>
	</table>
</body>
</html>