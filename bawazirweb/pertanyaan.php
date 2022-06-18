<?php 
	session_start();
	if($_SESSION['status']!="login"){
		header("location:login.php");
    }
    include 'dbConfig/deletePertanyaan.php';
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Pertanyaan</title>
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
                                    <li class="mega-menu">
                                        <a href="penyakit.php"><i class="ti-heart-broken"></i><span>Penyakit</span></a>
                                    </li>
                                    <li class="active">
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
                                    <h4 class="page-title pull-left">Daftar Pertanyaan</h4>
                            
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
                                    <?=$type=='a'?'Tambah':'Delete';$_SESSION['i'] = 0 ?> Pertanyaan Gagal
                                </div>
                            <?php } else { ?>
                                <div class="alert alert-success" role="alert">
                                    <?=$type=='a'?'Tambah':'Delete';$_SESSION['i'] = 0 ?> Pertanyaan Berhasil
                                </div>
                            <?php } 
                            } ?>
							<!-- <table id="example" class="table table-striped table-bordered nowrap" style="width:100%"> -->
                               <h4 class="header-title">
                                    Table Pertanyaan
                                    <button type="button" class="btn btn-info btn-xs pull-right" data-toggle="modal" data-target="#modalTambah"> <i class="ti-plus"></i> Tambah Pertanyaan</button>
                                </h4>
                                <div class="data-tables">
                                    <table id="dataTable" class="text-center" style="width: 100%">
                                    <thead class="bg-light text-capitalize">
                                            <tr>
                                                <th>Id</th>
                                                <th>Pertanyaan</th>
                                                <th>CFPakar</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                    <tbody>
						          <?php 
                                    include 'dbConfig/dbConn.php';
                                    $index = 1;
                                    $data = mysqli_query($conn,"select * from pertanyaan order by id");
                                    while($result = mysqli_fetch_array($data)){
                                    ?>
                                     <tr>
                                        <td><?php echo $result['id'] ?></td>
                                        <td><?php echo utf8_encode($result['pertanyaan']) ?></td>
                                        <td><?php echo $result['cfPakar'] ?></td>
                                        <td><a href='pertanyaan.php?kode=<?php echo $result['id'] ?>'>Delete</a> | <a href="pertanyaan.php?edit=<?=$result['id']?>">Edit</a></td>
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

<div class="modal fade" tabindex="-1" role="dialog" id="modalTambah" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="post" action="dbConfig/addPertanyaan.php">
                <div class="modal-header">
                    <h5 class="modal-title">Data Pertanyaan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="kode-pertanyaan"> <strong> Id Pertanyaan </strong></label>
                        <input type="text" class="form-control" id="kode-pertanyaan" name="kode" placeholder="0-999">
                    </div>
                    <div class="form-group">
                        <label for="nama-pertanyaan"> <strong> Pertanyaan </strong></label>
                        <input type="text" class="form-control" id="nama-pertanyaan" name="nama" placeholder="Nama Pertanyaan">
                    </div>
                    <div class="form-group">
                        <label for="cf-pakar"> <strong> CF Pakar </strong></label>
                        <input type="text" class="form-control" id="cf-pakar" name="cfPakar" placeholder="CF Pakar">
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="act" id="act" value="insert">
                    <button type="submit" id="button" class="btn btn-primary">Simpan</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                </div>
            </form>
        </div>
    </div>
</div>

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
            <?php $id = $_GET['edit']; ?>
            <?php $data = mysqli_query($conn,"select * from pertanyaan where id = '$id '"); ?>
            <?php $data  = mysqli_fetch_assoc($data)?>
            $('#kode-pertanyaan').val("<?php echo $data['id'] ?>");
            $('#nama-pertanyaan').val("<?php echo $data['pertanyaan'];?>");
            $('#cf-pakar').val("<?php echo $data['cfPakar'];?>");
            $('#act').val("update");
            $('#modalTambah').modal('show');
        <?php } ?>
    </script>
</body>
</html>




