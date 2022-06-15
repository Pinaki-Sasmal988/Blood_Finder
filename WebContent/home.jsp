
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%--
       if(session.getAttribute("user_name")==null){
    	   response.sendRedirect("UserLogin.jsp");
       }
    
    --%>
  <%@page import="com.AreaSearch"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>User Home Page</title>
<%--boostrap link --%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<!-- Main css -->

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/auto.css">
</head>
<body>
<%--navbar --%>
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" width="60"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <form class="d-flex" method="post" action="./AreaSearch">
        <input class="form-control me-2" type="search" name="area" placeholder="Search by area name" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>


<%--end navbar --%>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
	

		
		
			<div class="container">
			<br>
						<h1 class="typewriter">A Drop of Blood Can Save a Life!!</h1>
						
						
						
				<table>
				<tr>
				    <th>Bank Name</th>
				    <th>Find</th>
				</tr>
				<% ArrayList<String> obj= (ArrayList<String>)request.getAttribute("data");
				for(int i=0;i<obj.size();i++){%>
				<tr>
				<td><%=obj.get(i) %></td>
				<td>View</td>
				</tr>
				<%} %>
				</table>		
				
				
			</div>
		

	

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	
	 var obj=document.getElementById("status").value;
	 if(obj=="failed"){
		 swal("Sorry","No Blood Bank Found","failed");
	 }
	</script>
</body>

  
</html>