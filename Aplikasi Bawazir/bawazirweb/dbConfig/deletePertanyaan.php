<?php
include 'dbConn.php';

if(isset($_GET['kode'])) {
$kode = $_GET['kode'];
$data = mysqli_query($conn,"DELETE FROM pertanyaan WHERE id = '$kode'");
$data2 = mysqli_query($conn,"DELETE FROM pertanyaanpenyakit WHERE idpertanyaan = '$kode'");

$_SESSION['i'] = 1;
if ($data && $data2) {
    header("location:pertanyaan.php?message=d1");
} else {
    header("location:pertanyaan.php?message=d0");
}
}
?>