<?php
include 'dbConn.php';

if(isset($_GET['kode'])) {
$kode = $_GET['kode'];
$data = mysqli_query($conn,"DELETE FROM penyakit WHERE kode = '$kode'");
$_SESSION['i'] = 1;
if ($data) {
    header("location:penyakit.php?message=d1");
} else {
    header("location:penyakit.php?message=d0");
}
}
?>