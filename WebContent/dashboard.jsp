<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Bank Dashboard Page</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Enter Blood Details</h2>
					
						<form method="post" action="DashboardServlet" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="bank_id"><i
									class="zmdi zmdi-lock-outline"></i></label> <input
									type=hidden name="bank_id" id="bank_id" value="${bank_id}" />
							</div>
							<div class="form-group">
								<label for="A+ Blood Group"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="a+" id="a+" placeholder="Enter A+ Blood Group Units" />
							</div>
							<div class="form-group">
								<label for="B+ Blood Group"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="b+" id="b+" placeholder="Enter B+ Blood Group Units" />
							</div>
							<div class="form-group">
								<label for="O+ Blood Group"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="o+" id="o+" placeholder="Enter O+ Blood Group Units" />
							</div>
							<div class="form-group">
								<label for="AB+ Blood Group"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="ab+" id="ab+" placeholder="Enter AB+ Blood Group Units" />
							</div>
							<div class="form-group">
								<label for="A- Blood Group"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="a-" id="a-" placeholder="Enter A- Blood Group Units" />
							</div>
							<div class="form-group">
								<label for="B- Blood Group"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="b-" id="b-" placeholder="Enter B- Blood Group Units" />
							</div>
							<div class="form-group">
								<label for="O- Blood Group"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="o-" id="o-" placeholder="Enter O- Blood Group Units" />
							</div>
							<div class="form-group">
								<label for="AB- Blood Group"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="ab-" id="ab-" placeholder="Enter AB- Blood Group Units" />
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Submit" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="BankLogin.jsp" class="signup-image-link">I am already
							member</a>
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
	 if(obj=="success"){
		 swal("Congratualation","Your Account Created","success");
	 }
	</script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>