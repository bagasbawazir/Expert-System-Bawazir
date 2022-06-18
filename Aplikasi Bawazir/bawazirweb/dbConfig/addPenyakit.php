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
if($_POST['act'] == 'save'){
    foreach ($_POST as $k => $v){
        eval('$r_' . $k . ' = $v;');
    }
    if(isset($r_gejala)){
        $type = array_filter($r_gejala);
        $label = 'gejala';
        $uniquelabel = 'kode';
    }else{
        $type = array_filter($r_pertanyaan);
        $label = 'pertanyaan';
        $uniquelabel = 'id';
    }
    //echo $r_key;
    $err = false;
    mysqli_autocommit($conn, FALSE);
    $data = mysqli_query($conn,"delete from $label"."penyakit WHERE kodepenyakit = '$r_key'");
    $err = mysqli_error($conn);
    echo $err;
    echo "||| query: ". "delete from $label"."penyakit WHERE kodepenyakit = '$r_key'";
    echo "<br>";
    if(empty($err)){
        if($data){
            foreach($type as $k => $v){
                $data = mysqli_query($conn,"insert into $label"."penyakit(kodepenyakit, $uniquelabel"."$label".") values('$r_key', '$v')");
                $err = mysqli_error($conn);
                echo mysqli_error($conn);
                echo "||| query: "."insert into $label"."penyakit(kodepenyakit, $uniquelabel"."$label".") values('$r_key', '$v')";
                echo "<br>";
                if (!empty($err)){
                    break;
                }

            }
        }
    }
    
    if(empty($err)){
        mysqli_commit($conn);
    }

    unset($_POST);
    session_start();
    $_SESSION['i'] = 1;
    if (empty($err)) {
        header("location:../penyakit.php?message=a1");
        exit;
    } else {
        header("location:../penyakit.php?message=a0");
        exit;
    } 
}
?>