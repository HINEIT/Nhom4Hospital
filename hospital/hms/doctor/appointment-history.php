<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Doctor | Appointment History</title>
    <meta charset="utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link
        href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic"
        rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
    <link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
    <link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
    <link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
    <link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
    <link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/plugins.css">
    <link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
</head>

<body>
    <div id="app">
        <?php include('include/sidebar.php');?>
        <div class="app-content">


            <?php include('include/header.php');?>
            <!-- end: TOP NAVBAR -->
            <div class="main-content">
                <div class="wrap-content container" id="container">
                    <!-- start: PAGE TITLE -->
                    <section id="page-title">
                        <div class="row">
                            <div class="col-sm-8">
                                <h1 class="mainTitle">Danh s??ch l???ch kh??m</h1>
                            </div>
                            <ol class="breadcrumb">
                                <li>
                                    <span>B??c s?? </span>
                                </li>
                                <li class="active">
                                    <span>Danh s??ch l???ch kh??m</span>
                                </li>
                            </ol>
                        </div>
                    </section>
                    <!-- end: PAGE TITLE -->
                    <!-- start: BASIC EXAMPLE -->
                    <div class="container-fluid container-fullw bg-white">


                        <div class="row">
                            <div class="col-md-12">

                                <p style="color:red;"><?php echo htmlentities($_SESSION['msg']);?>
                                    <?php echo htmlentities($_SESSION['msg']="");?></p>
                                <table class="table table-hover" id="sample-table-1">
                                    <thead>
                                        <tr>
                                            <th class="center">STT</th>
                                            <th class="hidden-xs">T??n B???nh nh??n</th>
                                            <th>Khoa kh??m</th>
                                            <th>Chi ph??</th>
                                            <th>Th???i gian kh??m</th>
                                            <th>Ng??y t???o</th>
                                            <th>Tr???ng th??i</th>
                                            <th>T??y ch???n</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
$sql=mysql_query("select users.fullName as fname,appointment.*  from appointment join users on users.id=appointment.userId where appointment.doctorId='".$_SESSION['id']."'");
$cnt=1;
while($row=mysql_fetch_array($sql))
{
?>

                                        <tr>
                                            <td class="center"><?php echo $cnt;?>.</td>
                                            <td class="hidden-xs"><?php echo $row['fname'];?></td>
                                            <td><?php echo $row['doctorSpecialization'];?></td>
                                            <td><?php echo $row['consultancyFees'];?></td>
                                            <td><?php echo $row['appointmentDate'];?> / <?php echo
												 $row['appointmentTime'];?>
                                            </td>
                                            <td><?php echo $row['postingDate'];?></td>
                                            <td>
                                                <?php if(($row['doctorStatus']==0))  
														{
															echo "L???ch ???? H???y";
														}
														if( ($row['doctorStatus']==1))  
														{
															echo "Ch???";
														}
														if(($row['doctorStatus']==2))  
														{
															echo "???? kh??m";
														}
                                                        if(($row['doctorStatus']==3))  
														{
															echo "X??c Nh???n";
														}
												?>

                                            </td>
                                            <td>
                                                <div class="visible-md visible-lg hidden-sm hidden-xs">
                                                    <form action="update.php?id=<?php echo $row['id']?>" method="post">
                                                        <select name="option" id="">
                                                            <option>-- Ch???n --</option>
                                                            <option value="0">H???y B???</option>
                                                            <option value="1">Ch???</option>
                                                            <option value="3">X??c nh???n</option>
                                                            <option value="2">???? kh??m</option>
                                                        </select>
                                                        <button type="submit" name="update">C???p Nh???t</button>
                                                    </form>
                                                </div>
                                                <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                    <div class="btn-group" dropdown is-open="status.isopen">
                                                        <button type="button"
                                                            class="btn btn-primary btn-o btn-sm dropdown-toggle"
                                                            dropdown-toggle>
                                                            <i class="fa fa-cog"></i>&nbsp;<span class="caret"></span>
                                                        </button>
                                                        <ul class="dropdown-menu pull-right dropdown-light" role="menu">
                                                            <li>
                                                                <a href="#">
                                                                    Edit
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    Share
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    Remove
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <?php 
$cnt=$cnt+1;
											 }?>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <!-- end: BASIC EXAMPLE -->
                    <!-- end: SELECT BOXES -->

                </div>
            </div>
        </div>

    </div>
    <!-- start: MAIN JAVASCRIPTS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/modernizr/modernizr.js"></script>
    <script src="vendor/jquery-cookie/jquery.cookie.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="vendor/switchery/switchery.min.js"></script>
    <!-- end: MAIN JAVASCRIPTS -->
    <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
    <script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
    <script src="vendor/autosize/autosize.min.js"></script>
    <script src="vendor/selectFx/classie.js"></script>
    <script src="vendor/selectFx/selectFx.js"></script>
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
    <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <!-- start: CLIP-TWO JAVASCRIPTS -->
    <script src="assets/js/main.js"></script>
    <!-- start: JavaScript Event Handlers for this page -->
    <script src="assets/js/form-elements.js"></script>
    <script>
    jQuery(document).ready(function() {
        Main.init();
        FormElements.init();
    });
    </script>
    <!-- end: JavaScript Event Handlers for this page -->
    <!-- end: CLIP-TWO JAVASCRIPTS -->
</body>

</html>