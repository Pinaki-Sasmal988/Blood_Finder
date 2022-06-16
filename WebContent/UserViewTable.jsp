<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%@page import="com.AreaSearchNew"%>
<%@page import="com.*"%>
<%@page import="java.util.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="UserViewServlet" class="register-form" id="register-form">
		<%-- <input type="hidden" id="bname" value="<%= request.getAttribute("bank_name")%>">
		<input type="hidden" id="bid" value="<%= request.getAttribute("bank_id")%>">--%>
	</form>
							
	<table border='1' width='800' align='center'>
				<tr>
				    <th>Bank Name</th>
				  
      				   <th>Details</th>
				</tr>
				<% ArrayList<String> obj= (ArrayList<String>)request.getAttribute("data");
				 ArrayList<String> obj2= (ArrayList<String>)request.getAttribute("data2");

				 SetGet ob=new SetGet();
				for(int i=0;i<obj.size();i++){%>
				<tr>
				<td><%=obj.get(i) %></td>
				<td>
				   <div class="form-group form-button">
							<input type="submit" name="signup" id="signup"
								class="form-submit" value="View" onClick="<%=ob.set_bank_id(obj2.get(i)) %>" />
							</div>
				  
				</td>
				</tr>
				<%} %>
	</table>
</body>
</html>