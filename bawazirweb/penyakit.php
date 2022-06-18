<?php 
	session_start();
	if($_SESSION['status']!="login"){
		header("location:login.php");
    }
    include 'dbConfig/deletePenyakit.php';
    
?> 


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Penyakit</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
        <!-- Start datatable css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.semanticui.min.css"> -->

    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <link rel="stylesheet" href="assets/css/custom_style.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
    <!-- source bayu -->
<!-- 	<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.1.1/css/responsive.bootstrap.min.css" /> -->

</head>

<body class="body-bg">
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- main wrapper start -->
    <div class="horizontal-main-wrapper">
        <!-- main header area start -->
        <div class="mainheader-area prm_color">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo">
                              <a href="#"><h3 class="user-name dropdown-toggle">Admin Pakar Cabai</h3></a>
                        </div>
                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-9 clearfix text-right">
                        <div class="clearfix d-md-inline-block d-block">
                            <div class="user-profile m-0">
                                <img class="avatar user-thumb" src="assets/images/author/avatar.png" alt="avatar">
                                <h4 class="user-name dropdown-toggle" data-toggle="dropdown"><?php echo $_SESSION['username']; ?> <i class="fa fa-angle-down"></i></h4>
                                <div class="dropdown-menu">
                                     <a class="dropdown-item" href="dbConfig/logout.php">Log Out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- main header area end -->
        <!-- header area start -->
               <div class="header-area header-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-9  d-none d-lg-block">
                        <div class="horizontal-menu">
                            <nav>
                                <ul id="nav_menu">
                                    <li class="mega-menu">
                                        <a href="index.php"><i class="ti-user"></i><span>User</span></a>
                                    </li>
                                     <li class="mega-menu">
                                        <a href="diagnosa.php"><i class="ti-slice"></i><span>Diagnosa</span></a>
                                    </li>
                                    <li class="mega-menu">
                                        <a href="feedback.php"><i class="ti-share-alt"></i><span>Feedback</span></a>
                                    </li>
                                    <li class="mega-menu">
                                        <a href="gejala.php"><i class="ti-eye"></i><span>Gejala</span></a>
                                    </li>
                                    <li class="active">
                                        <a href="penyakit.php"><i class="ti-heart-broken"></i><span>Penyakit</span></a>
                                    </li>
                                    <li class="mega-menu">
                                        <a href="pertanyaan.php"><i class="ti-help"></i><span>Pertanyaan</span></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                  
                    <!-- mobile_menu -->
                    <div class="col-12 d-block d-lg-none">
                        <div id="mobile_menu"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header area end -->

                    <!-- page title area start -->
                    <div class="page-title-area mt-3 card_new">
                        <div class="row align-items-center">
                            <div class="col-sm-12">
                                <div class="breadcrumbs-area clearfix">
                                    <h4 class="page-title pull-left">Daftar Penyakit</h4>
                            
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- page title area end -->
                    <!-- content area start -->
                    <!-- data table start -->
                   <div class="col-xl-12 col-lg-12 mt-3">
                        <div class="card">
                            <div class="card-body">
                            <?php
                            if(isset($_GET['message']) && !empty($_SESSION['i'])){
                                $message = $_GET['message'];
                                $type = substr($message, 0, 1);
                                $status = substr($message, -1);
                                if(empty($status)){  ?>
                                <div class="alert alert-danger" role="alert">
                                    <?=$type=='a'?'Tambah':'Delete';$_SESSION['i'] = 0 ?> Penyakit Gagal
                                </div>
                            <?php } else { ?>
                                <div class="alert alert-success" role="alert">
                                    <?=$type=='a'?'Tambah':'Delete';$_SESSION['i'] = 0 ?> Penyakit Berhasil
                                </div>
                            <?php } 
                            } ?>
							<!-- <table id="example" class="table table-striped table-bordered nowrap" style="width:100%"> -->
                               <h4 class="header-title">
                                    Table Penyakit
                                    <button type="button" class="btn btn-info btn-xs pull-right" data-toggle="modal" data-target="#modalTambah"> <i class="ti-plus"></i> Tambah Penyakit</button>
                                </h4>
                                <div class="data-tables">
                                    <table id="dataTable" class="text-center" style="width: 100%">
                                    <thead class="bg-light text-capitalize">
                                            <tr>
                                                <th>No</th>
                                                <th>Kode</th>
                                                <th>Penyakit</th>
                                                <th>Deskripsi</th>
                                                <th>Solusi</th>
                                                <th>Gambar</th>
                                                <th>Action</th>
                                                <th>Assign</th>
                                            </tr>
                                        </thead>
                                    <tbody>
						          <?php 
                                    include 'dbConfig/dbConn.php';
                                    $index = 1;
                                    $data = mysqli_query($conn,"select * from penyakit order by kode");
                                    while($result = mysqli_fetch_array($data)){
                                    ?>
                                     <tr>
                                        <td><?php echo $index++; ?></td>
                                        <td><?php echo $result['kode'] ?></td>
                                        <td><?php echo $result['penyakit'] ?></td>
                                        <td><?php echo $result['deskripsi'] ?></td>
                                        <td><?php echo $result['solusi'] ?></td>
                                        <td><?php echo $result['gambar'] ?></td>
                                        <td><a href='penyakit.php?kode=<?php echo $result['kode'] ?>'>Delete</a> | <a href="penyakit.php?edit=<?=$result['kode']?>">Edit</a></td>
                                        <td><a href='penyakit.php?gejala=<?php echo $result['kode'] ?>'>Gejala</a> | <a href="penyakit.php?pertanyaan=<?=$result['kode']?>">Pertanyaan</a></td>
                                    
                                    </tr>
                                    <?php 
                                        }
                                    ?>						
                                        
						        </tbody>	
    							</table> 
    						</div>
                        </div>
                    </div>
                </div>

        <footer>
            <div class="card_new mt-3 prm_color txt_footer mb-3">
                <p class="txt_footer">© Copyright 2020 Bawazir & Zulfikar</a></p>
            </div>
        </footer>
        <!-- footer area end-->
    </div>

<!-- modal area start -->
<?php if(isset($_GET['edit'])){?>
    <?php $kode = $_GET['edit']; ?>
    <div class="modal fade" tabindex="-1" role="dialog" id="modalTambah" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="post" action="dbConfig/addPenyakit.php" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h5 class="modal-title">Tambah Data Penyakit</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <?php $data = mysqli_query($conn,"select * from penyakit where kode = '$kode'"); ?>
                    <?php $data = mysqli_fetch_all($data, MYSQLI_ASSOC);?>
                    <?php //echo "<pre>";print_r(mysqli_error($conn));$kode;print_r($data); ?>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="kode-penyakit"> <strong> Kode Penyakit </strong></label>
                            <input type="text" class="form-control" id="kode-penyakit" name="kode" placeholder="P001">
                        </div>
                        <div class="form-group">
                            <label for="nama-penyakit"> <strong> Nama Penyakit </strong></label>
                            <input type="text" class="form-control" id="nama-penyakit" name="nama" placeholder="Nama Penyakit">
                        </div>
                        <div class="form-group">
                            <label for="deskripsi-penyakit"> <strong> Deskripsi </strong></label>
                            <textarea class="form-control" id="deskripsi-penyakit" name="deskripsi" placeholder="Deskripsi Penyakit" value="<?php echo $data[0]['deskripsi'] ?>"><?php echo $data[0]['deskripsi'] ?></textarea>
                        </div>
                        <div class="form-group">
                            <label for="solusi-penyakit"> <strong> Solusi </strong></label>
                            <textarea class="form-control" id="solusi-penyakit" name="solusi" placeholder="Solusi Penyakit" value="<?php echo $data[0]['solusi'] ?>"><?php echo $data[0]['solusi'] ?></textarea>
                        </div>
                        <div class="form-group">
                            <label for="gambar-penyakit"> <strong> Gambar </strong></label>
                            <input type="file" class="form-control" id="gambar-penyakit" name="gambar" placeholder="Gambar"></textarea>
                            <small id="gambar-help" class="form-text text-muted"></small>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" name="act" id="act" value="insert">
                        <button type="submit" class="btn btn-primary">Tambah</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php }else{ ?>
    <div class="modal fade" tabindex="-1" role="dialog" id="modalTambah" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="post" action="dbConfig/addPenyakit.php" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h5 class="modal-title">Tambah Data Penyakit</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <?php // $data = mysqli_query($conn,"select * from penyakit where kode = '$kode'"); ?>
                    <?php  //$data = mysqli_fetch_all($data, MYSQLI_ASSOC);?>
                    <?php //echo "<pre>";print_r(mysqli_error($conn));$kode;print_r($data); ?>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="kode-penyakit"> <strong> Kode Penyakit </strong></label>
                            <input type="text" class="form-control" id="kode-penyakit" name="kode" placeholder="P001">
                        </div>
                        <div class="form-group">
                            <label for="nama-penyakit"> <strong> Nama Penyakit </strong></label>
                            <input type="text" class="form-control" id="nama-penyakit" name="nama" placeholder="Nama Penyakit">
                        </div>
                        <div class="form-group">
                            <label for="deskripsi-penyakit"> <strong> Deskripsi </strong></label>
                            <textarea class="form-control" id="deskripsi-penyakit" name="deskripsi" placeholder="Deskripsi Penyakit" value="<?php// echo $data[0]['deskripsi'] ?>"><?php// echo $data[0]['deskripsi'] ?></textarea>
                        </div>
                        <div class="form-group">
                            <label for="solusi-penyakit"> <strong> Solusi </strong></label>
                            <textarea class="form-control" id="solusi-penyakit" name="solusi" placeholder="Solusi Penyakit" value="<?php// echo $data[0]['solusi'] ?>"><?php// echo $data[0]['solusi'] ?></textarea>
                        </div>
                        <div class="form-group">
                            <label for="gambar-penyakit"> <strong> Gambar </strong></label>
                            <input type="file" class="form-control" id="gambar-penyakit" name="gambar" placeholder="Gambar"></textarea>
                            <small id="gambar-help" class="form-text text-muted"></small>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" name="act" id="act" value="insert">
                        <button type="submit" class="btn btn-primary">Tambah</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php } ?>
<?php if(isset($_GET['gejala']) or isset($_GET['pertanyaan'])){?>
    <div class="modal fade" tabindex="-1" role="dialog" id="modalAssign" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <?php $label = (isset($_GET['gejala']))?'gejala':'pertanyaan' ?>
                <?php $key = (isset($_GET['gejala']))?$_GET['gejala']:$_GET['pertanyaan'] ?>
                <?php $keylabel = (isset($_GET['gejala']))?'kode':'id' ?>
                <form method="post" action="dbConfig/addPenyakit.php" enctype="multipart/form-data">
                    <div class="modal-header">
                        <h5 class="modal-title">Assign <?= $label ?></h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <?php $data = mysqli_query($conn,"select * from penyakit where kode = '$key'"); ?>
                    <?php $data = mysqli_fetch_all($data, MYSQLI_ASSOC);?>
                    <div class="modal-body"  id="bodyFormAssign">
                        <div class="form-group">
                            <label for="label-kode"> <strong> Kode Penyakit </strong></label>
                            <input type="text" class="form-control" id="label-kode" name="kode" placeholder="<?=$data[0]['kode']?>" value="<?=$data[0]['kode']?>" disabled>
                        </div>
                        <div class="form-group">
                            <label for="label-nama"> <strong> Nama Penyakit </strong></label>
                            <input type="text" class="form-control" id="label-nama" name="nama" placeholder="<?=$data[0]['penyakit']?>"  value="<?=$data[0]['penyakit']?>" disabled>
                        </div>
                        <h5>List <?=ucwords($label)?>:</h5>
                        <?php 
                            // ambil data
                            $data = mysqli_query($conn,"select * from ".$label."penyakit where kodepenyakit = '$key'"); 
                            $data = mysqli_fetch_all($data, MYSQLI_ASSOC);
                            $m_data = mysqli_query($conn,"select * from ".$label." order by ".$keylabel); 
                            $m_data = mysqli_fetch_all($m_data, MYSQLI_ASSOC);
                            // buat labeling (agar tidak menjoinkan)
                            foreach($m_data as $k => $v){
                                $l_data[$v[$keylabel]] = $v[$label];
                            }
                            //echo"<pre>";
        
                        ?>
                        <?php if(!empty($data)){ ?>
                            <?php foreach($data as $k => $v){?>
                            <div class="input-group mb-3" >
                                <select class="custom-select select-<?=$label?>"  name="<?=$label?>[]" style="height: 43px;">
                                    <?php //echo "<pre>";print_r($m_data);die; ?>
                                    <?php foreach($m_data as $kk => $vv){ ?>
                                        <?php if($vv[$keylabel] == $v[$keylabel.$label]){?>
                                            <option value="<?=$v[$keylabel.$label]?>" selected><?=$v[$keylabel.$label] . " - " ?><?= $l_data[$v[$keylabel.$label]] ?></option>
                                        <?php }else{ ?>
                                            <option value="<?=$vv[$keylabel]?>"><?=$vv[$keylabel] . " - " ?><?= $vv[$label] ?></option>
                                        <?php } ?>
                                    <?php } ?>
                                </select>
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary" onclick="goAddItems(this)" type="button">-</button>
                                </div>
                            </div>
                            <?php }?>
                            <div class="input-group mb-3" >
                                <select class="custom-select select-<?=$label?>"  name="<?=$label?>[]" style="height: 43px;">
                                    <option value="" selected>-- Pilih <?=ucwords($label)?> --</option>
                                    <?php foreach($m_data as $kk => $vv){ ?>
                                        <option value="<?=$vv[$keylabel]?>"><?=$vv[$keylabel] . " - " ?><?= $vv[$label] ?></option>
                                    <?php } ?>
                                </select>
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary" onclick="goAddItems(this)" type="button">+</button>
                                </div>
                            </div>
                        <?php }else{ ?>
                            <div class="input-group mb-3" >
                                <select class="custom-select select-<?=$label?>"  name="<?=$label?>[]" style="height: 43px;">
                                    <option value="" selected>-- Pilih <?=ucwords($label)?> --</option>
                                    <?php foreach($m_data as $kk => $vv){ ?>
                                        <option value="<?=$vv[$keylabel]?>"><?=$vv[$keylabel] . " - " ?><?= $vv[$label] ?></option>
                                    <?php } ?>
                                </select>
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary" onclick="goAddItems(this)" type="button">+</button>
                                </div>
                            </div>
                        <?php }?>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" name="act" id="act" value="save">
                        <input type="hidden" name="key" id="key" value="<?=$key?>">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php } ?>


    <!-- offset area end -->
    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <!-- Start datatable js -->
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
    <!-- <script src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.semanticui.min.js"></script> -->

   
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
    <script>
        <?php if(isset($_GET['edit'])){?>
            <?php $kode = $_GET['edit']; ?>
            <?php $data = mysqli_query($conn,"select * from penyakit where kode = '$kode'"); ?>
            <?php $data  = mysqli_fetch_assoc($data)?>
            $('#kode-penyakit').val("<?php echo $data['kode'] ?>");
            $('#nama-penyakit').val("<?php echo $data['penyakit'];?>");
            $('#gambar-help').append('Gambar Sekarang: <a href="https://<?php echo $data['gambar'] ?>"><?php echo $data['gambar'] ?></a>');
            $('#act').val("update");
            $('#modalTambah').modal('show');
        <?php } ?>
    </script>
    <script>
        <?php if(isset($_GET['gejala']) or isset($_GET['pertanyaan'])){ ?>
            $('#modalAssign').modal('show');
        <?php } ?>
    </script>
    <script>
        function goAddItems(element){
            if(element.innerHTML == '+'){
                $(element).parent().parent().clone().appendTo('#bodyFormAssign');
                $(element).text("-");

            }else{
                var a = $(element).parent().parent();
                a.remove();
                console.log(a);
            }
        }
    </script>

</body>
</html>




