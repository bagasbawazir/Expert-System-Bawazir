<?php 
	session_start();
	if($_SESSION['status']!="login"){
		header("location:login.php");
	}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Diagnosa Cabai</title>
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
                                 <li>
                                        <a href="index.php"><i class="ti-user"></i><span>User</span></a>
                                    </li>
                                     <li class="active">
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
                                    <h4 class="page-title pull-left">Daftar Diagnosa</h4>
                            
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
							<!-- <table id="example" class="table table-striped table-bordered nowrap" style="width:100%"> -->
						       <h4 class="header-title">Table Diagnosa</h4>
                                <div class="data-tables">
                                    <table id="dataTable" class="text-center" style="width: 100%">
                                    <thead class="bg-light text-capitalize">
                                            <tr>
                                                <th>No</th>
                                                <th>Username</th>
                                                <th>Location</th>
                                                <th>Hasil</th>
                                                <th>Presentase</th>
                                                <th>Created At</th>
                                            </tr>
                                        </thead>
                                    <tbody>
						          <?php 
                                    include 'dbConfig/dbConn.php';
                                    $index = 1;
                                    $data = mysqli_query($conn,"select diagnosa.username,diagnosa.location,hasil, diagnosa.persentase,diagnosa.createdAt from diagnosa join user on user.username = diagnosa.username ORDER BY diagnosa.createdAt DESC ");
                                    while($result = mysqli_fetch_array($data)){
                                    ?>
                                     <tr>
                                        <td><?php echo $index++; ?></td>
                                        <td><?php echo $result['username']; ?></td>
                                        <td><?php echo $result['location']; ?></td>
                                        <td><?php echo $result['hasil']; ?></td>
                                         <td><?php echo $result['persentase']; ?></td>
                                        <td><?php
                                            echo date("d-m-Y", ($result['createdAt']/1000))
                                         ?></td>
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
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>
</html>




