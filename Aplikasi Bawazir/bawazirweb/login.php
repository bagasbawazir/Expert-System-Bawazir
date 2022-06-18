<?php 
	session_start();
	//if($_SESSION['status']!="login"){
	//	header("location:login.php");
	//}
?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Login</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
	<link rel="stylesheet" type="text/css" href="css/my-login.css">
</head>

<body class="my-login-page">
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<img src="assets/images/icon/chilli_icon.png" alt="logo">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Login</h4>
							<form method="POST" class="my-login-validation" action="dbConfig/getLogin.php">
								<div class="form-group">
									<label for="username">Username</label>
									<input id="username" type="text" class="form-control" name="username" value="" required autofocus>
								
								</div>

								<div class="form-group">
									<label for="password">Password
								
									</label>
									<input id="password" type="password" class="form-control" name="password" required data-eye>
								</div>

								<div class="form-group">
								<?php 
									if(isset($_GET['message'])){
										if($_GET['message'] == "failed"){ ?>
											<div class="alert alert-danger" role="alert">
  											Wrong username or password
											</div>
											<?php
											}	
										}
									?>
								</div>

								<div class="form-group m-0">
									<button style="background-color:#3FC1C9 " type="submit" class="btn btn-success btn-block">
										Login
									</button>
								</div>
								
							</form>
							<p>
							<div class="form-group m-0" >
								<label style="font-weight:bold; text-align-last: center;">
								    
								Download Aplikasi Diagnosa Cabai Android
								
									</label>
									<button style="background-color:#24a319" class="btn btn-success btn-block" onclick="location.href='download/app-diagnosacabai.apk'">
										Download
									</button>
								</div>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2021 &mdash; Bawazir Bagas
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="js/my-login.js"></script>
</body>
</html>
