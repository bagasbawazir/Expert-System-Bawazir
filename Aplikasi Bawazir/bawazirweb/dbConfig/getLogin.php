<?php
session_start();

include 'dbConn.php';

$username = $_POST['username'];
$password = md5($_POST['password']);

$data = mysqli_query($conn,"select * from admin where username='$username' and password='$password'");
$result = mysqli_num_rows($data);
 
if($result > 0){
	$_SESSION['username'] = $username;
	$_SESSION['status'] = "login";
	 header("location:../index.php");
}else{
	header("location:../login.php?message=failed");
}
?>