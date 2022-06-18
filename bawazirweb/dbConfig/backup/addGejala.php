<?php
include 'dbConn.php';

if($_POST['act'] == 'insert'){
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];

    $query = "insert into gejala(kode,gejala) values ('$kode','$nama')";
    $data = mysqli_query($conn,$query);
    session_start();
    $_SESSION['i'] = 1;
    unset($_POST);
    if ($data) {
        header("location:/gejala.php?message=a1");
        exit;
    } else {
        header("location:/gejala.php?message=a0");
        exit;
    }   
}

?>