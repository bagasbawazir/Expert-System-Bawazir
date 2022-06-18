<?php
include 'dbConn.php';

if($_POST['act'] == 'insert'){
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    $cfPakar = $_POST['cfPakar'];

    $query = "insert into pertanyaan(id,pertanyaan,cfPakar) values ('$kode','$nama', '$cfPakar')";
    $data = mysqli_query($conn,$query);
    session_start();
    $_SESSION['i'] = 1;
    unset($_POST);
    if ($data) {
        header("location:../pertanyaan.php?message=a1");
        exit;
    } else {
        header("location:../pertanyaan.php?message=a0");
        exit;
    }   
}

if($_POST['act'] == 'update'){
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    $cfPakar = $_POST['cfPakar'];

    $query = "update pertanyaan set id ='$kode', pertanyaan='$nama', cfPakar = '$cfPakar' where id = '$kode'";
    $data = mysqli_query($conn,$query);

    unset($_POST);
    session_start();
    $_SESSION['i'] = 1;
    if ($data) {
        header("location:../pertanyaan.php?message=a1");
        exit;
    } else {
        header("location:../pertanyaan.php?message=a0");
        exit;
    }   
}

?>