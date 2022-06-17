<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Bank Registration Page</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
h6{
color:red;
}
</style>
</head>
<body>
      <nav class="navbar navbar-expand-lg navbar-light bg-gray">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" width="80"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
         <h3> <a class="nav-link active" aria-current="page" href="index.jsp">Home</a></h3>
        </li>
        
    </div>
  </div>
</nav>
 
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Register</h2>
					
						<form method="post" action="BankRegisterServlet" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Bank Name" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" onkeyup="test(this)" id="contact" placeholder="Contact no" />
								<h6 id="result"></h6>
							</div>
							<div class="form-group">
								<label for="email"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="email" name="email" id="email_id" placeholder="Email Address" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" onkeyup="check(this)" name="re_pass" id="re_pass"
									placeholder="Repeat your password" />
									  <h6 id="res"></h6>
							</div>
							<div class="form-group">
								<label for="address"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="address" id="address" placeholder="Bank Address" />
							</div>
							
							<div class="form-group">
								<label for="area"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="area" id="area" placeholder="Area of the Bank" />
							</div>
							<div class="form-group">
								<label for="pincode"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="pincode" id="pin_code" placeholder="Pin Code" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
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
	 
	 var password=document.getElementById('password');
	  function check(ele){
	        if(ele.value.length>0){
	            if(ele.value != password.value){
	              document.getElementById('res').innerText="password does't mach";
	            }else{
	                document.getElementById('res').innerText="";

	            }
	        }else{
	            document.getElementById('res').innerText="Enter confirm password";

	        }
	    }
	 
	  function test(ele){

	        if(isNaN(ele.value)){
	          document.getElementById('result').style.color="red";
	           //document.getElementById('result').innerText="Enter Only Number";
	           alert("Enter Only Number");
	        }
	        else
	        {
	            document.getElementById('result').innerText="";

	            if(ele.value.length >10){
	               // document.getElementById('result').innerText="mobile number only will be 10 digit ";
                 alert("mobile number only will be 10 digit");
	            }
	            
	        }
	          
	    }
	 
	</script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>