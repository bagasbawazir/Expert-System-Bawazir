<?php
include 'dbConn.php';

if(isset($_GET['kode'])) {
$kode = $_GET['kode'];
$data = mysqli_query($conn,"DELETE FROM gejala WHERE kode = '$kode'");
$_SESSION['i'] = 1;
if ($data) {
    header("location:gejala.php?message=d1");
} else {
    header("location:gejala.php?message=d0");
}
}
?>