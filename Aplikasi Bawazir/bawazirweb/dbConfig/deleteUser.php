<?php
include 'dbConn.php';

if(isset($_GET['username'])) {
$username = $_GET['username'];
$data = mysqli_query($conn,"DELETE FROM user WHERE username = '$username'");
if ($data) {
    header("location:index.php?message=success");
} else {
    header("location:index.php?message=failed");
}
}
?>