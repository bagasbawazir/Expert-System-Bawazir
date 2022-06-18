<?php
include 'dbConn.php';

if($_POST['act'] == 'insert'){
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    $deskripsi = $_POST['deskripsi'];
    $solusi = $_POST['solusi'];
    $gambar = 'https://'.$_SERVER['HTTP_HOST'].'/uploads/'.$kode.'.jpg';

    $query = "insert into penyakit(kode,penyakit,deskripsi,solusi,gambar) values ('$kode','$nama','$deskripsi','$solusi','$gambar')";
    $data = mysqli_query($conn,$query);
    
    unset($_POST);
    session_start();
    $_SESSION['i'] = 1;
    if ($data) {
        move_uploaded_file($_FILES['gambar']['tmp_name'], '../uploads/'.$kode.'.jpg');
        header("location:../penyakit.php?message=a1");
        exit;
    } else {
        header("location:../penyakit.php?message=a0");
        exit;
    } 
}
if($_POST['act'] == 'update'){
    $kode = $_POST['kode'];
    $nama = $_POST['nama'];
    $deskripsi = $_POST['deskripsi'];
    $solusi = $_POST['solusi'];
    $gambar = 'https://'.$_SERVER['HTTP_HOST'].'/uploads/'.$kode.'.jpg';

    $query = "update penyakit set kode ='$kode', penyakit='$nama', deskripsi='$deskripsi', solusi='$solusi', gambar='$gambar' where kode = '$kode'";
    $data = mysqli_query($conn,$query);

    unset($_POST);
    session_start();
    $_SESSION['i'] = 1;
    if ($data) {
        move_uploaded_file($_FILES['gambar']['tmp_name'], '../uploads/'.$kode.'.jpg');
        header("location:../penyakit.php?message=a1");
        exit;
    } else {
        header("location:../penyakit.php?message=a0");
        exit;
    }   
}

?>