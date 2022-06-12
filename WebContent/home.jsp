<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%--
       if(session.getAttribute("user_name")==null){
    	   response.sendRedirect("UserLogin.jsp");
       }
    
    --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>User Home Page</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-form">
						<h2 class="form-title">Login</h2>
						<form method="post" action="PincodeSearch" class="register-form" id="login-form">
							<div class="form-group">
								<label for="pincode"><i class="zmdi zmdi-lock"></i></label> 
								<input
									type="text" name="pincode" id="pincode"
									placeholder="Search by Pin Code" />
								
							</div>
							<div class="form-group form-button">
								<input type="submit" name="search1" id="search1"
									class="form-submit" value="Search" />
							</div>
						</form>
						<form method="post" action="AreaSearch" class="register-form" id="login-form">
							<div class="form-group">
								<label for="area"><i class="zmdi zmdi-lock"></i></label> 
								<input
									type="text" name="area" id="area"
									placeholder="Search by area name" />
								
							</div>
							<div class="form-group form-button">
								<input type="submit" name="search2" id="search2"
									class="form-submit" value="Search" />
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</section>

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